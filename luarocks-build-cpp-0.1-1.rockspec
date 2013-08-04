package = "luarocks-build-cpp"
version = "0.1-1"
source = {
	url = "git://github.com/lua4web/luarocks-build-cpp.git"
}
description = {
	summary = "C++ support for building rocks",
	detailed = [[
luarocks-build-cpp is a fork of built-in build system for C++ rocks. 
]],
	homepage = "http://github.com/lua4web/luarocks-build-cpp",
	license = "MIT/X11"
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		["luarocks.build.cpp"] = "cpp.lua"
	},
	copy_directories = {}
}

