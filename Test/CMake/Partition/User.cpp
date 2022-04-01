module Test.CMake:User;

import :Def;

auto Test::CMake::User::Invoke2() -> int
{
	return def->Invoke3();
}

auto Test::CMake::User::SomeNum() -> int
{
	return 4;
}
