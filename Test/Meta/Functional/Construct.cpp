import Meta.Functional.Construct;
import Std;

using namespace Meta;

struct
	Test
{
	int i;

	[[nodiscard]]
	auto friend constexpr
	(	operator==
	)	(	Test const&
		,	Test const&
		)
		noexcept
	->	bool
	=	default;
};

static_assert
(	Construct<Test>()
	(	2
	)
==	Test
	{	2
	}
);

template
	<	std::size_t
			t_nExtent
	>
struct
	ValuePack
{
	int
		Array
		[	t_nExtent
		]
	;

	[[nodiscard]]
	auto friend constexpr
	(	operator==
	)	(	ValuePack const&
		,	ValuePack const&
		)
		noexcept
	->	bool
	=	default;
};

template
	<	typename
		...	t_tpArgument
	>
(	ValuePack
)	(	t_tpArgument
		...
	)
->	ValuePack
	<	sizeof...(t_tpArgument)
	>
;

static_assert
(	Construct<ValuePack>()
	(	2
	,	23
	,	52
	,	25
	)
==	ValuePack
	{	2
	,	23
	,	52
	,	25
	}
);

template
	<	typename
			t_tEntity
	>
struct
	TypePack
{
	t_tEntity
		Value
	;

	[[nodiscard]]
	auto friend constexpr
	(	operator==
	)	(	TypePack const&
		,	TypePack const&
		)
		noexcept
	->	bool
	=	default;
};

template
	<	typename
			t_tArgument
	>
(	TypePack
)	(	t_tArgument
	)
->	TypePack
	<	t_tArgument
	>
;

static_assert
(	Construct<TypePack>()
	(	2
	)
==	TypePack
	{	2
	}
);
