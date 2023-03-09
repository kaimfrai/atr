import Meta.Memory.PointerCast;

using ::Meta::Memory::PointerCast;

struct
	A
{
	virtual
	(	compl
		A
	)	()
	=	default;
};

struct
	B
{
	virtual
	(	compl
		B
	)	()
	=	default;
};

struct
	AB
:	A
,	B
{};

template
	<	typename
			t_tObject
	>
auto constexpr
(	ComparePointerCast
)	(	auto const
			i_fCast
	,	auto const
			i_fCompareCast
	)
	noexcept
->	bool
{
	t_tObject
		vAB
	{};

	return
		i_fCast(&vAB)
	==	i_fCompareCast(&vAB)
	;
}

static_assert
(	ComparePointerCast<AB>
	(	[](AB* i_aObject){ return PointerCast<AB>(i_aObject); }
	,	[](AB* i_aObject){ return i_aObject; }
	)
);

static_assert
(	ComparePointerCast<AB const>
	(	[](AB const* i_aObject){ return PointerCast<AB>(i_aObject); }
	,	[](AB const* i_aObject){ return i_aObject; }
	)
);

static_assert
(	ComparePointerCast<AB>
	(	[](AB* i_aObject){ return PointerCast<A>(i_aObject); }
	,	[](A* i_aObject){ return i_aObject; }
	)
);

static_assert
(	ComparePointerCast<AB const>
	(	[](AB const* i_aObject){ return PointerCast<A>(i_aObject); }
	,	[](A const* i_aObject){ return i_aObject; }
	)
);

static_assert
(	ComparePointerCast<AB>
	(	[](AB* i_aObject){ return PointerCast<B>(i_aObject); }
	,	[](B* i_aObject){ return i_aObject; }
	)
);

static_assert
(	ComparePointerCast<AB const>
	(	[](AB const* i_aObject){ return PointerCast<B>(i_aObject); }
	,	[](B const* i_aObject){ return i_aObject; }
	)
);

static_assert
(	ComparePointerCast<AB>
	(	[](AB* i_aObject){ return PointerCast<AB>(PointerCast<A>(i_aObject)); }
	,	[](AB* i_aObject){ return i_aObject; }
	)
);

static_assert
(	ComparePointerCast<AB const>
	(	[](AB const* i_aObject){ return PointerCast<AB>(PointerCast<A>(i_aObject)); }
	,	[](AB const* i_aObject){ return i_aObject; }
	)
);

static_assert
(	ComparePointerCast<AB>
	(	[](AB* i_aObject){ return PointerCast<AB>(PointerCast<B>(i_aObject)); }
	,	[](AB* i_aObject){ return i_aObject; }
	)
);

static_assert
(	ComparePointerCast<AB const>
	(	[](AB const* i_aObject){ return PointerCast<AB>(PointerCast<B>(i_aObject)); }
	,	[](AB const* i_aObject){ return i_aObject; }
	)
);

void ExceptFunction();

static_assert
(	PointerCast<void()>(&ExceptFunction)
==	static_cast<void(*)()>(&ExceptFunction)
);

void NoexceptFunction() noexcept;

static_assert
(	PointerCast<void()>(&NoexceptFunction)
==	static_cast<void(*)()>(&NoexceptFunction)
);

static_assert
(	PointerCast<void() noexcept>(&NoexceptFunction)
==	static_cast<void(*)() noexcept>(&NoexceptFunction)
);
