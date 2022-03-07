export module Test.CMake:Fwd;

export namespace
	Test::CMake
{
	struct Fwd;

	struct
		User
	{
		Fwd* fwd;

		auto SomeNum() -> int;
		auto Invoke2() -> int;
	};
}
