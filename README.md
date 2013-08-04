# luarocks-build-cpp

A fork of built-in build system for C++ rocks. 
Specify "cpp" as build type and "luarocks-build-cpp" as dependency to use it. 

## Example rockspec

```lua

package = "name"
version = "0.1-1"
source = {
	url = "git://github.com/username/name.git"
}
description = {
	summary = "...",
	detailed = "...",
	homepage = "http://github.com/username/name",
	license = "MIT/X11"
}
dependencies = {
	"lua >= 5.1, < 5.3",
	"luarocks-build-cpp"
}
build = {
	type = "cpp",
	modules = {
		name = {
			sources = {
				"name.cpp",
				"aux.cpp"
			}
		}
	}
}

```

## Notes

* This module is a quick fix for the problem of compiling C++ with built-in back-end. There is no garantee that it is a portable solution(though it should be). 
* g++ is not used, gcc with stdc++ library is. 
* All non-lua modules are treated as C++. 

## License 

Copyright © 2013 lua4web <lua4web@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 
