# Ronin Bruteforcers

* [Source](https://github.com/ronin-ruby/ronin-bruteforcers)
* [Issues](https://github.com/ronin-ruby/ronin-bruteforcers/issues)
* [Documentation](http://rubydoc.info/gems/ronin-bruteforcers/frames)
* [Email](mailto:postmodern.mod3 at gmail.com)

[![Build Status](https://secure.travis-ci.org/ronin-ruby/ronin-bruteforcers.png?branch=master)](https://travis-ci.org/ronin-ruby/ronin-bruteforcers)

## Description

Ronin Bruteforcers is a Ruby library for Ronin that provides various
bruteforcers.

## Features

* Provides various Bruteforcers:
  * {Ronin::Bruteforcers::DB}
  * {Ronin::Bruteforcers::FTP}
  * {Ronin::Bruteforcers::IMAP}
  * {Ronin::Bruteforcers::POP3}
  * {Ronin::Bruteforcers::SMTP}
  * {Ronin::Bruteforcers::SSH}
  * {Ronin::Bruteforcers::Telnet}

## Synopsis

Start the Ronin console with Ronin Bruteforcers preloaded:

    $ ronin bruteforcers

## Examples

## Requirements

* [Ruby] >= 1.9.1
* [ronin-support] ~> 0.5
* [ronin] ~> 1.0

## Install

### Stable

    $ gem install ronin-bruteforcers

### Edge

    $ git clone git://github.com/ronin-ruby/ronin-bruteforcers.git
    $ cd ronin-bruteforcers/
    $ bundle install
    $ ./bin/ronin-brute-ssh --help

## License

Copyright (c) 2011-2013 Hal Brodigan (postmodern.mod3 at gmail.com)

Ronin Bruteforcers is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Ronin Bruteforcers is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Ronin Bruteforcers.  If not, see <http://www.gnu.org/licenses/>.

[Ruby]: http://www.ruby-lang.org

[ronin-support]: https://github.com/ronin-ruby/ronin-support#readme
[ronin]: https://github.com/ronin-ruby/ronin#readme
