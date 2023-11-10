# ToBool

Natural coercion into boolean (true / false). Useful for API interaction.


## Installation

`gem "to_bool"`


## Usage

Call `to_bool` or `to_boolean` on any object. It will *usually* return false, except:

* String: `"t"`, `"true"`, `"1"`, `"y"`, and `"yes"` are true
* Integer: `1` is true
* TrueClass: `true` is true
* Symbol: `:true` is true

See the spec, it pretty much maps it out.

## Contributing

Yes!

### Running Tests

```
bundle exec rspec
```
