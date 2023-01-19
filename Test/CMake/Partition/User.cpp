export module Test.CMake:User;

export namespace
	Test::CMake
{
	struct Def;

	struct
		User
	{
		Def* def;

		auto SomeNum() -> int;
		auto Invoke2() -> int;
	};
}
