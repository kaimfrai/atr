export module Test.CMake.CrossFwdDecl;

export namespace
	CrossFwdDecl
{
	struct Derived
	{};

	struct Factory
	{
		auto Create() const -> Derived*;
	};
}
