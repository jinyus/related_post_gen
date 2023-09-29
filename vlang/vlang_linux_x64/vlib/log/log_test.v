module log

fn log_mutable_statements(mut log Log) {
	println(@FN + ' start')
	log.info('info')
	log.warn('warn')
	log.error('error')
	log.debug('no output for debug')
	log.set_level(.debug)
	log.debug('debug now')
	log.set_level(level_from_tag('INFO') or { Level.disabled })
	log.info('info again')
	log.set_level(level_from_tag('') or { Level.disabled })
	log.error('no output anymore')
	println(@FN + ' end')
}

fn logger_mutable_statements(mut log Logger) {
	println(@FN + ' start')
	// the given logger instance could have a level to filter some levels used here
	log.info('info')
	log.warn('warn')
	log.error('error')
	log.debug('no output for debug')
	log.set_level(.debug) // change logging level, now part of the Logger interface
	log.debug('output for debug now')
	log.info('output for info now')
	println(@FN + ' end')
}

// Note that Log and Logger methods requires a mutable instance

// new_log create and return a new Log reference
pub fn new_log() &Log {
	return &Log{
		level: .info
	} // reference needed for its parallel usage
}

// new_log_as_logger create and return a new Log reference as a generic Logger
pub fn new_log_as_logger() &Logger {
	return &Log{
		level: .info
	} // reference needed for its parallel usage
}

fn test_log_mutable() {
	println(@FN + ' start')
	mut log := Log{}
	log.set_level(.info)
	log_mutable_statements(mut log)
	assert true
	println(@FN + ' end')
}

fn test_log_mutable_reference() {
	println(@FN + ' start')
	mut log := new_log()
	assert typeof(log).name == '&log.Log'
	t := spawn log_mutable_statements(mut log)
	t.wait()
	assert true
	println(@FN + ' end')
}

fn test_logger_mutable_reference() {
	println(@FN + ' start')
	// get log as Logger and use it
	mut logger := new_log_as_logger()
	logger.set_level(.warn)
	assert typeof(logger).name == '&log.Logger'
	t := spawn logger_mutable_statements(mut logger)
	t.wait()
	assert true
	println(@FN + ' end')
}

fn test_level_from_tag() ? {
	assert level_from_tag('INFO')? == .info
	assert level_from_tag('FATAL')? == .fatal
	assert level_from_tag('WARN')? == .warn
	assert level_from_tag('ERROR')? == .error
	assert level_from_tag('DEBUG')? == .debug

	invalid := ['', 'FOO', 'nope']

	for value in invalid {
		mut passed := false
		level_from_tag(value) or { passed = true }
		assert passed
	}
}

fn test_target_from_label() ? {
	assert target_from_label('console')? == .console
	assert target_from_label('file')? == .file
	assert target_from_label('both')? == .both

	invalid := ['', 'FOO', 'nope']

	for value in invalid {
		mut passed := false
		target_from_label(value) or { passed = true }
		assert passed
	}
}
