export module Test.CMake:Def;

export import :User;

export namespace
	Test::CMake
{
	struct Def
	{
		User u;

		constexpr
		(	Def
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
