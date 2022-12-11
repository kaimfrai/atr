import Meta.Functional;
import Std;

using namespace Meta;

struct
	Test
{
	int i;

	friend auto constexpr operator ==(Test const&, Test const&) -> bool = default;
};

static_assert
(	Construct<Test>{}
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

	friend auto constexpr operator ==(ValuePack const&, ValuePack const&) -> bool = default;
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
(	ConstructValuePack<ValuePack>{}
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

	friend auto constexpr operator ==(TypePack const&, TypePack const&) -> bool = default;
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
(	ConstructTypePack<TypePack>{}
	(	2
	)
==	TypePack
	{	2
	}
);
