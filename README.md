# ToBool

Natural coercion into boolean (true / false). Useful for API interaction.


## Installation

`gem "to_bool"`


## Usage

Call `to_bool` on any object. It will *usually* return false, except:

* String: `"true"`, `"1"`, and `"yes"` are true
* Integer: `1` is true

See the spec, it pretty much maps it out.

## Contributing

Yes.


## License

MIT
