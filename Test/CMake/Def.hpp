export module Test.CMake:Def;

export import :Fwd;

export namespace
	Test::CMake
{
	struct Fwd
	{
		User u;

		constexpr
		(	Fwd
		)	()
		:	u{this}
		{}

		auto inline
		(	Invoke1
		)	()
		->	int
		{
			return u.Invoke2();
		}

		auto inline
		(	Invoke3
		)	()
		->	int
		{
			return 4;
		}
	};
}
