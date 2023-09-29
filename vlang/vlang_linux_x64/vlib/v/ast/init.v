module ast

pub fn (t &Table) resolve_init(node StructInit, typ Type) Expr {
	sym := t.sym(typ)
	match sym.info {
		Array {
			mut has_len := false
			mut has_cap := false
			mut has_default := false
			mut len_expr := empty_expr
			mut cap_expr := empty_expr
			mut default_expr := empty_expr
			mut exprs := []Expr{}
			for field in node.init_fields {
				match field.name {
					'len' {
						has_len = true
						len_expr = field.expr
					}
					'cap' {
						has_cap = true
						cap_expr = field.expr
					}
					'init' {
						has_default = true
						default_expr = field.expr
					}
					else {
						exprs << field.expr
					}
				}
			}
			return ArrayInit{
				// TODO: mod is not being set for now, we could need this in future
				// mod: mod
				pos: node.pos
				typ: typ
				elem_type: sym.info.elem_type
				has_len: has_len
				has_cap: has_cap
				has_default: has_default
				len_expr: len_expr
				cap_expr: cap_expr
				default_expr: default_expr
				exprs: exprs
			}
		}
		Map {
			mut keys := []Expr{}
			mut vals := []Expr{}
			for field in node.init_fields {
				keys << StringLiteral{
					val: field.name
				}
				vals << field.expr
			}
			return MapInit{
				typ: typ
				key_type: sym.info.key_type
				value_type: sym.info.value_type
				keys: keys
				vals: vals
			}
		}
		else {
			return StructInit{
				...node
				unresolved: false
			}
		}
	}
}
