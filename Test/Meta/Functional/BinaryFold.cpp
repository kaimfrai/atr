import Meta.Functional;

using Meta::Fold;
using namespace Meta::Functional;

static_assert
(	Fold<&Key::operator+, LeftFold>{}(1, 2)
==	3
);
static_assert
(	Fold<&Key::operator+, RightFold>{}(1, 2)
==	3
);

static_assert
(	Fold<&Key::operator-, LeftFold>{}(3, 2)
==	1
);
static_assert
(	Fold<&Key::operator-, RightFold>{}(3, 2)
==	1
);

static_assert
(	Fold<&Key::operator*, LeftFold>{}(3, 5)
==	15
);
static_assert
(	Fold<&Key::operator*, RightFold>{}(3, 5)
==	15
);

static_assert
(	Fold<&Key::operator/, LeftFold>{}(7, 3)
==	2
);
static_assert
(	Fold<&Key::operator/, RightFold>{}(7, 3)
==	2
);

static_assert
(	Fold<&Key::operator%, LeftFold>{}(7, 3)
==	1
);
static_assert
(	Fold<&Key::operator%, RightFold>{}(7, 3)
==	1
);

static_assert
(	Fold<&Key::operator^, LeftFold>{}(3, 1)
==	2
);
static_assert
(	Fold<&Key::operator^, RightFold>{}(3, 1)
==	2
);

static_assert
(	Fold<&Key::operator&, LeftFold>{}(3, 1)
==	1
);
static_assert
(	Fold<&Key::operator&, RightFold>{}(3, 1)
==	1
);

static_assert
(	Fold<&Key::operator|, LeftFold>{}(3, 1)
==	3
);
static_assert
(	Fold<&Key::operator|, RightFold>{}(3, 1)
==	3
);

template
	<	FoldKey
			t_fKey
	,	EFoldDirection
			t_eDirection
	>
auto constexpr
(	TestAssign
)	(	int
			i_nInitial
	,	int
			i_nAssign
	,	int
			i_nExpected
	)
->	bool
{
	decltype(auto)
		rResult
	=	Fold<t_fKey, t_eDirection>{}
		(	i_nInitial
		,	i_nAssign
		)
	;

	return
	(	(	&rResult
		==	&i_nInitial
		)
	and	(	i_nInitial
		==	i_nExpected
		)
	);
}

static_assert
(	TestAssign<&Key::operator=, LeftFold>(3, 1, 1)
);
static_assert
(	TestAssign<&Key::operator=, RightFold>(3, 1, 1)
);

static_assert
(	Fold<&Key::operator<, LeftFold>{}(-1, 3)
);
static_assert
(	Fold<&Key::operator<, RightFold>{}(-1, 3)
);

static_assert
(	Fold<&Key::operator>, LeftFold>{}(3, -1)
);
static_assert
(	Fold<&Key::operator>, RightFold>{}(3, -1)
);

static_assert
(	Fold<&Key::operator<<, LeftFold>{}(3, 1)
==	6
);
static_assert
(	Fold<&Key::operator<<, RightFold>{}(3, 1)
==	6
);

static_assert
(	Fold<&Key::operator>>, LeftFold>{}(6, 1)
==	3
);
static_assert
(	Fold<&Key::operator>>, RightFold>{}(6, 1)
==	3
);

static_assert
(	TestAssign<&Key::operator+=, LeftFold>(3, 1, 4)
);
static_assert
(	TestAssign<&Key::operator+=, RightFold>(3, 1, 4)
);

static_assert
(	TestAssign<&Key::operator-=, LeftFold>(3, 1, 2)
);
static_assert
(	TestAssign<&Key::operator-=, RightFold>(3, 1, 2)
);

static_assert
(	TestAssign<&Key::operator*=, LeftFold>(3, 3, 9)
);
static_assert
(	TestAssign<&Key::operator*=, RightFold>(3, 3, 9)
);

static_assert
(	TestAssign<&Key::operator/=, LeftFold>(5, 2, 2)
);
static_assert
(	TestAssign<&Key::operator/=, RightFold>(5, 2, 2)
);

static_assert
(	TestAssign<&Key::operator%=, LeftFold>(5, 2, 1)
);
static_assert
(	TestAssign<&Key::operator%=, RightFold>(5, 2, 1)
);

static_assert
(	TestAssign<&Key::operator^=, LeftFold>(5, 2, 7)
);
static_assert
(	TestAssign<&Key::operator^=, RightFold>(5, 2, 7)
);

static_assert
(	TestAssign<&Key::operator&=, LeftFold>(5, 2, 0)
);
static_assert
(	TestAssign<&Key::operator&=, RightFold>(5, 2, 0)
);

static_assert
(	TestAssign<&Key::operator|=, LeftFold>(5, 1, 5)
);
static_assert
(	TestAssign<&Key::operator|=, RightFold>(5, 1, 5)
);

static_assert
(	TestAssign<&Key::operator<<=, LeftFold>(5, 2, 20)
);
static_assert
(	TestAssign<&Key::operator<<=, RightFold>(5, 2, 20)
);

static_assert
(	TestAssign<&Key::operator>>=, LeftFold>(7, 2, 1)
);
static_assert
(	TestAssign<&Key::operator>>=, RightFold>(7, 2, 1)
);

static_assert
(	Fold<&Key::operator==, LeftFold>{}(7, 7)
);
static_assert
(	Fold<&Key::operator==, RightFold>{}(7, 7)
);

static_assert
(	Fold<&Key::operator!=, LeftFold>{}(-7, 7)
);
static_assert
(	Fold<&Key::operator!=, RightFold>{}(-7, 7)
);

static_assert
(	Fold<&Key::operator<=, LeftFold>{}(-7, 7)
);
static_assert
(	Fold<&Key::operator<=, RightFold>{}(-7, 7)
);

static_assert
(	Fold<&Key::operator>=, LeftFold>{}(7, -7)
);
static_assert
(	Fold<&Key::operator>=, RightFold>{}(7, -7)
);

static_assert
(	Fold<&Key::operator&&, LeftFold>{}(1, 1)
);
static_assert
(	Fold<&Key::operator&&, RightFold>{}(1, 1)
);

static_assert
(	Fold<&Key::operator||, LeftFold>{}(0, 1)
);
static_assert
(	Fold<&Key::operator||, RightFold>{}(0, 1)
);

static_assert
(	Fold<&Key::operator,, LeftFold>{}(0, 1)
==	1
);
static_assert
(	Fold<&Key::operator,, RightFold>{}(0, 1)
==	1
);

struct
	Test
{
	int i;
};

template
	<	EFoldDirection
			t_eDirection
	>
auto constexpr
(	TestPtrToMemPtr
)	(	int
			i_nInitial
	,	int
			i_nAssign
	)
->	bool
{
	Test
		t
	{	i_nInitial
	};
	decltype(auto)
		rInt
	=	Fold<&Key::operator->*, t_eDirection>{}
		(	&t
		,	&Test::i
		)
	;
	rInt = i_nAssign;
	return
	(	(	&t.i
		==	&rInt
		)
	and	(	t.i
		==	i_nAssign
		)
	);
}

static_assert
(	TestPtrToMemPtr<LeftFold>(3, 5)
);
static_assert
(	TestPtrToMemPtr<RightFold>(3, 5)
);
