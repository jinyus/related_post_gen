namespace JSON

def parse<T>(json_string: string) -> T:
    let flexbuffer, err = flexbuffers_json_to_binary(json_string)

    assert(err == nil)

    let value, err2 = flexbuffers_binary_to_value(typeof T, flexbuffer)

    assert(err2 == nil)
    assert(value != nil)

    return value

def encode<T>(value: T) -> string:
    let flexbuffer, err = flexbuffers_value_to_binary(value)

    assert(err == nil)

    let json_string, err2 = flexbuffers_binary_to_json(flexbuffer)

    assert(err2 == nil)
    assert(json_string != nil)

    return json_string