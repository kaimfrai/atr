module;

#include "Include.h"

module Test.CMake;

import :Def;

auto Test::CMake::User::Invoke2() -> int
{
	return def->Invoke3();
}

auto Test::CMake::User::SomeNum() -> int
{
	return FIVE - 1;
}
