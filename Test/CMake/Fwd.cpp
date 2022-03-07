module Test.CMake;

auto Test::CMake::User::Invoke2() -> int
{
	return fwd->Invoke3();
}

auto Test::CMake::User::SomeNum() -> int
{
	return 4;
}
