# lua.env

[![Build Status](https://travis-ci.com/briandowns/lua.env.svg?branch=master)](https://travis-ci.com/briandowns/lua.env)

lua.env is a Lua module providing the ability to load values from a `.env` file into environment variables.

An example can be found in the `examples` directory.

## Features

* Ignores lines starting with whitespace
* Ignores lines starting with whitespace `#`
* Empty values become empty strings
* Whitespace is removed from start and end of unquoted strings
* Single quoted strings are replaced to double quoted
* Quoted values maintain their whitespace

## Contributing

Please feel free to open a PR!

## License

lua.env source code is available under the BSD 2 clause [License](/LICENSE).

## Contact

[@bdowns328](http://twitter.com/bdowns328)
