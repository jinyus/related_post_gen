import log

fn main() {
	// Note: you *do not* need to create a logger instance, and pass it around, just to use the `log` module.
	// The log module already creates an instance of a thread safe Logger, and utility functions to work with it:
	log.set_level(.debug)
	log.debug('simple debug message')
	log.warn('simple warning message')
	log.info('simple information message')
	log.error('simple error message')

	mut l := log.Log{}
	l.set_level(.info)
	// Make a new file called info.log in the current folder
	l.set_full_logpath('./info.log')
	l.log_to_console_too()
	println('Please check the file: ${l.output_file_name} after this example crashes.')

	l.info('info')
	l.warn('warn')
	l.error('error')
	l.debug('no output for debug')
	l.set_level(.debug)
	l.debug('debug now')
	l.set_level(log.level_from_tag('INFO') or { log.Level.disabled }) // set level from string, sample
	l.info('info again')
	l.set_level(log.level_from_tag('') or { log.Level.disabled }) // set level from string, sample
	l.error('no output anymore')
	l.fatal('fatal') // panic, next statements won't be executed
}
