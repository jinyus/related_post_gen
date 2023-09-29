module main

import os
import v.util
import v.util.diff
import v.pref
import v.builder
import v.builder.cbuilder
import v.ast
import rand
import term

const (
	base_os      = 'linux'
	os_names     = ['linux', 'macos', 'windows', 'freebsd', 'openbsd', 'solaris', 'termux']
	skip_modules = [
		'builtin.bare',
		'builtin.linux_bare.old',
		'builtin.js',
		'strconv',
		'strconv.ftoa',
		'hash',
		'strings',
		'crypto.rand',
		'os.bare',
		'os2',
		'szip',
		'v.eval',
	]
)

struct App {
	diff_cmd   string
	is_verbose bool
	modules    []string
mut:
	api_differences map[string]int
}

fn main() {
	vexe := os.real_path(os.getenv_opt('VEXE') or { @VEXE })
	vroot := os.dir(vexe)
	util.set_vroot_folder(vroot)
	os.chdir(vroot)!
	cmd := diff.find_working_diff_command() or { '' }
	mut app := App{
		diff_cmd: cmd
		is_verbose: os.getenv('VERBOSE').len > 0
		modules: if os.args.len > 1 { os.args[1..] } else { all_vlib_modules() }
	}
	for mname in app.modules {
		if !app.is_verbose {
			eprintln('Checking module: ${mname} ...')
		}
		api_base := app.gen_api_for_module_in_os(mname, base_os)
		for oname in os_names {
			if oname == base_os {
				continue
			}
			api_os := app.gen_api_for_module_in_os(mname, oname)
			app.compare_api(api_base, api_os, mname, base_os, oname)
		}
	}
	howmany := app.api_differences.len
	if howmany > 0 {
		eprintln(term.header('Found ${howmany} modules with different APIs', '='))
		for m in app.api_differences.keys() {
			eprintln('Module: ${m}')
		}
		exit(1)
	}
}

fn all_vlib_modules() []string {
	mut vlib_v_files := os.walk_ext('vlib', '.v')
	mut vmodulesmap := map[string]int{}
	for f in vlib_v_files {
		if f.contains('/tests/') || f.ends_with('_test.v') {
			continue
		}
		vmodulename := os.dir(f).replace('/', '.').replace('vlib.', '')
		if vmodulename in skip_modules {
			continue
		}
		vmodulesmap[vmodulename] = vmodulesmap[vmodulename] + 1
	}
	mut modules := vmodulesmap.keys()
	modules.sort()
	return modules
}

fn (app App) gen_api_for_module_in_os(mod_name string, os_name string) string {
	if app.is_verbose {
		eprintln('Checking module: ${mod_name:-30} for OS: ${os_name:-10} ...')
	}
	mpath := os.join_path('vlib', mod_name.replace('.', '/'))
	tmpname := '/tmp/${mod_name}_${os_name}.c'
	prefs, _ := pref.parse_args([], ['-os', os_name, '-o', tmpname, '-shared', mpath])
	mut b := builder.new_builder(prefs)
	cbuilder.compile_c(mut b)
	mut res := []string{}
	for f in b.parsed_files {
		for s in f.stmts {
			if s is ast.FnDecl {
				if s.is_pub {
					fn_signature := b.table.stringify_fn_decl(&s, mod_name, map[string]string{})
					fn_mod := s.modname()
					if fn_mod == mod_name {
						fline := '${fn_mod}: ${fn_signature}'
						res << fline
					}
				}
			}
		}
	}
	res.sort()
	return res.join('\n')
}

fn (mut app App) compare_api(api_base string, api_os string, mod_name string, os_base string, os_target string) {
	res := diff.color_compare_strings(app.diff_cmd, rand.ulid(), api_base, api_os)
	if res.len > 0 {
		summary := 'Different APIs found for module: `${mod_name}`, between OS base: `${os_base}` and OS: `${os_target}`'
		eprintln(term.header(summary, '-'))
		eprintln(res)
		eprintln(term.h_divider('-'))
		app.api_differences[mod_name] = 1
	}
}
