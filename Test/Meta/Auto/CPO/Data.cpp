import Meta.Auto.CPO.Data;

import std;

using ::Meta::CPO::Data;

[[nodiscard]]
auto constexpr inline
(	data
)	(	auto
		&&
	)
	noexcept
->	void*
{	::std::unreachable
	();
	return
		nullptr
	;
}

template
	<	typename
			t_tObject
	>
t_tObject static
	Object
{};

struct
	Member
{
	int i;

	[[nodiscard]]
	auto constexpr inline
	(	data
	)	()
		noexcept
	{	return
			&i
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	data
	)	()	const
		noexcept
	{	return
			&i
		;
	}
};

static_assert
(	Data
	(	Object<Member>
	)
==	&Object<Member>.i
);
static_assert
(	Data
	(	Object<Member const>
	)
==	&Object<Member const>.i
);

struct
	Friend
{
	int i;

	[[nodiscard]]
	auto friend constexpr inline
	(	data
	)	(	Friend
			&	i_rFriend
		)
		noexcept
	{	return
			&i_rFriend
			.	i
		;
	}

	[[nodiscard]]
	auto friend constexpr inline
	(	data
	)	(	Friend const
			&	i_rFriend
		)
		noexcept
	{	return
			&i_rFriend
			.	i
		;
	}
};

static_assert
(	Data
	(	Object<Friend>
	)
==	&Object<Friend>.i
);
static_assert
(	Data
	(	Object<Friend const>
	)
==	&Object<Friend const>.i
);

namespace
	ADL
{
	struct
		Namespace
	{
		int i;
	};

	[[nodiscard]]
	auto constexpr inline
	(	data
	)	(	Namespace
			&	i_rNamespace
		)
		noexcept
	{	return
			&i_rNamespace
			.	i
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	data
	)	(	Namespace const
			&	i_rNamespace
		)
		noexcept
	{	return
			&i_rNamespace
			.	i
		;
	}
}

static_assert
(	Data
	(	Object<::ADL::Namespace>
	)
==	&Object<::ADL::Namespace>.i
);
static_assert
(	Data
	(	Object<::ADL::Namespace const>
	)
==	&Object<::ADL::Namespace const>.i
);


::std::initializer_list<int> const constexpr inline
	InitializerList
{	1
,	2
,	3
,	4
};
static_assert
(	Data
	(	InitializerList
	)
==	::std::data(InitializerList)
);

using
	IntArray
=	int
	[	5
	]
;

static_assert
(	Data
	(	Object<IntArray>
	)
==	&Object<IntArray>[0]
);
static_assert
(	Data
	(	Object<IntArray const>
	)
==	&Object<IntArray const>[0]
);
