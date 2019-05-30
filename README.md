# dircompare

List differences between directory trees consisting of hardlinked files.  
https://github.com/mmitch/dircompare/

[![Build Status](https://travis-ci.org/mmitch/dircompare.svg?branch=master)](https://travis-ci.org/mmitch/dircompare)
[![GPL 3+](https://img.shields.io/badge/license-GPL%203%2B-blue.svg)](http://www.gnu.org/licenses/gpl-3.0-standalone.html)



## example

1. have a directory `dir1`
2. create a recursive copy where all the files are hard links
   instead of real copies, eg. with `cp -rl dir1 dir2`
3. add/rename/move/delete files in `dir1` and/or `dir2`
4. run `dircompare dir1 dir2` to see what has changed

Two files are only recognized as _equal_ when they are still
hardlinked.  See `test/test.sh` for an example setup and
`test/expected` for the associated output from `dircompare`.


## installation

- Perl
- the `Set::Scalar` Perl module


## copyright

Copyright (C) 2019  Christian Garbs <mitch@cgarbs.de>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
