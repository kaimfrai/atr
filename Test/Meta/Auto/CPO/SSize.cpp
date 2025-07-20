import Meta.Auto.CPO.SSize;

import std;

using ::Meta::CPO::SSize;

[[nodiscard]]
auto constexpr inline
(	ssize
)	(	auto
		&&
	)
	noexcept
->	::std::ptrdiff_t
{	::std::unreachable
	();
	return
		-1
	;
}

struct
	Member
{
	[[nodiscard]]
	auto constexpr inline
	(	ssize
	)	()	const
		noexcept
	{	return
			1
		;
	}
};

static_assert
(	SSize
	(	Member
		{}
	)
==	1
);

struct
	Friend
{
	[[nodiscard]]
	auto friend constexpr inline
	(	ssize
	)	(	Friend
		)
		noexcept
	{	return
			2
		;
	}
};

static_assert
(	SSize
	(	Friend
		{}
	)
==	2
);

namespace
	ADL
{
	struct
		Namespace
	{};

	[[nodiscard]]
	auto constexpr inline
	(	ssize
	)	(	Namespace
		)
		noexcept
	{	return
			3
		;
	}
}

static_assert
(	SSize
	(	::ADL::Namespace
		{}
	)
==	3
);

static_assert
(	SSize
	(	::std::initializer_list<int>
		{	1
		,	2
		,	3
		,	4
		}
	)
==	4
);

using
	IntArray
=	int
	[	5
	]
;

static_assert
(	SSize
	(	IntArray
		{	1
		,	2
		,	3
		,	4
		,	5
		}
	)
==	5
);
