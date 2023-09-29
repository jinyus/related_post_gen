module html

import strings

fn generate_temp_html() string {
	mut temp_html := strings.new_builder(200)
	temp_html.write_string('<!doctype html><html><head><title>Giant String</title></head><body>')
	for counter := 0; counter < 4; counter++ {
		temp_html.write_string("<div id='name_${counter}' ")
		temp_html.write_string("class='several-${counter}'>Look at ${counter}</div>")
	}
	temp_html.write_string('</body></html>')
	return temp_html.str()
}

fn test_search_by_tag_type() {
	dom := parse(generate_temp_html())
	assert dom.get_tags(name: 'div').len == 4
	assert dom.get_tags(name: 'head').len == 1
	assert dom.get_tags(name: 'body').len == 1
}

fn test_search_by_attribute_value() {
	mut dom := parse(generate_temp_html())
	// println(temp_html)
	print('Amount ')
	println(dom.get_tags_by_attribute_value('id', 'name_0'))
	assert dom.get_tags_by_attribute_value('id', 'name_0').len == 1
}

fn test_access_parent() {
	mut dom := parse(generate_temp_html())
	div_tags := dom.get_tags(name: 'div')
	parent := div_tags[0].parent
	assert unsafe { parent != 0 }
	for div_tag in div_tags {
		assert div_tag.parent == parent
	}
}

fn test_search_by_attributes() {
	dom := parse(generate_temp_html())
	assert dom.get_tags_by_attribute('id').len == 4
}

fn test_tags_used() {
	dom := parse(generate_temp_html())
	assert dom.get_tags().len == 9
}

fn test_access_tag_fields() {
	dom := parse(generate_temp_html())
	id_tags := dom.get_tags_by_attribute('id')
	assert id_tags[0].name == 'div'
	assert id_tags[1].attributes['class'] == 'several-1'
}

fn generate_temp_html_with_classes() string {
	mut temp_html := strings.new_builder(400)
	temp_html.write_string('<!doctype html><html><head><title>Giant String</title></head><body>')
	temp_html.write_string("<div class='single'>Single</div>")
	for counter := 0; counter < 4; counter++ {
		temp_html.write_string("<div id='name_${counter}' ")
		temp_html.write_string("class='common'>Common No. ${counter}</div>")
	}
	temp_html.write_string("<div class='complex-0 complex-1 complex-2'>Complex</div>")
	temp_html.write_string("<div class='complex-0 complex-2'>Partial</div>")
	temp_html.write_string('</body></html>')
	return temp_html.str()
}

fn test_search_by_class() {
	dom := parse(generate_temp_html_with_classes())
	single_class_tags := dom.get_tags_by_class_name('single')
	common_class_tags := dom.get_tags_by_class_name('common')
	complex_class_tags := dom.get_tags_by_class_name('complex-0', 'complex-1', 'complex-2')
	partial_class_tags := dom.get_tags_by_class_name('complex-0', 'complex-2')
	shuffled_class_tags := dom.get_tags_by_class_name('complex-2', 'complex-0', 'complex-1')
	assert single_class_tags.len == 1
	assert common_class_tags.len == 4
	assert complex_class_tags.len == 1
	assert complex_class_tags[0].attributes['class'] == 'complex-0 complex-1 complex-2'
	assert partial_class_tags.len == 2
	assert shuffled_class_tags.len == 1
	assert shuffled_class_tags[0].attributes['class'] == 'complex-0 complex-1 complex-2'
}
