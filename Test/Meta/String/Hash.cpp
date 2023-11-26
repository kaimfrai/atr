import Meta.String.Hash;

import Std;

using ::Meta::String::Hash;

static_assert
(	Hash("").Value
==	Hash::InitialValue
);
static_assert
(	Hash("")
);
static_assert
(	not
	Hash()
);
static_assert
(	Hash("")
!=	Hash()
);

[[nodiscard]]
auto constexpr inline
(	AssertHashEqual
)	(	char const
		*	i_aLeft
	,	char const
		*	i_aRight
	)
	noexcept
->	bool
{
	if	(	Hash(i_aLeft)
		!=	Hash(i_aRight)
		)
	{	::std::unreachable
		();
	}

	return
		true
	;
}

[[nodiscard]]
auto constexpr inline
(	CheckCaseInsensitivity
)	()
	noexcept
->	bool
{
	for	(	char
				vLeftChar
			=	'@'
			,	vRightChar
			=	'`'
		;	(	vLeftChar
			<= '_'
			)
		;	++	vLeftChar
		,	++	vRightChar
		)
	{
		char const
			vLeftString
			[]
		{	vLeftChar
		,	'\0'
		};
		char const
			vRightString
			[]
		{	vRightChar
		,	'\0'
		};
		if	(	not
				AssertHashEqual
				(	vLeftString
				,	vRightString
				)
			)
		{	return
				false
			;
		}
	}
	return
		true
	;
}
static_assert
(	CheckCaseInsensitivity
	()
,	"Case insensitivity violated!"
);

static_assert
(	(	Hash("")
	+	"ABC"
	)
==	Hash("ABC")
);

static_assert
(	(	Hash("ABC")
	+	""
	)
==	Hash("ABC")
);

static_assert
(	Hash("ABC")
!=	Hash("ABCDEF")
);
static_assert
(	Hash("ABC")
!=	Hash("DEF")
);
static_assert
(	(	Hash("ABC")
	+	"DEF"
	)
==	Hash("ABCDEF")
);

static_assert
(	(	Hash("abcdefghi")
	+	"jklmnopq"
	+	"rstuvwxyz"
	)
==	Hash("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
);

template
	<	::std::size_t
			t_vStringLength
	>
[[nodiscard]]
auto constexpr inline
(	AddDistributionEntry
)	(	int
		(&	o_rStorage
		)	[	16uz
			]
	,	char const
		(&	i_rString
		)	[	t_vStringLength
			]
	)
	noexcept
->	bool
{
	int
	&	rDistributionCount
	=	o_rStorage
		[	Hash(i_rString)
		bitand
			0xF
		]
	;
	if	(	rDistributionCount
		>	// Best observed value so far
			4119
		)
	{	return
			false
		;
	}

	++	rDistributionCount
	;

	return
		true
	;
}

template
	<	::std::size_t
			t_vCharacterCount
	,	::std::size_t
			t_vStringLength
	>
[[nodiscard]]
auto constexpr inline
(	DistributePermutations
)	(	int
		(&	i_rStorage
		)	[	16uz
			]
	,	char const
		(&	i_rCharacters
		)	[	t_vCharacterCount
			]
	,	char
		(&	i_rString
		)	[	t_vStringLength
			]
	,	::std::size_t
			i_vIndex
	)
	noexcept
->	bool
{
	if	(	not
			AddDistributionEntry
			(	i_rStorage
			,	i_rString
			)
		)
	{	return
			false
		;
	}

	if	(	i_vIndex
		<	(	t_vStringLength
			-	1uz
			)
		)
	{
		for	(	char
					vChar
			:	i_rCharacters
			)
		{
			i_rString
				[	i_vIndex
				]
			=	vChar
			;

			if	(	not
					DistributePermutations
					(	i_rStorage
					,	i_rCharacters
					,	i_rString
					,	(	i_vIndex
						+	1uz
						)
					)
				)
			{	return
					false
				;
			}
		}
		i_rString
			[	i_vIndex
			]
		=	'\0'
		;
	}

	return
		true
	;
}

[[nodiscard]]
auto constexpr inline
(	CheckDistribution
)	()
	noexcept
->	bool
{
	static char constexpr
		vRelevantCharacters
		[]
	{	'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'
	,	'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'
	,	'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T'
	,	'U', 'V', 'W', 'X', 'Y', 'Z', '_', '.', '[', ']'
	};

	int
		vDistributionCounts
		[	16uz
		]
	{};
	char
		vString
		[	4uz
		]
	{};

	return
		DistributePermutations
		(	vDistributionCounts
		,	vRelevantCharacters
		,	vString
		,	0uz
		)
	;
}

static_assert
(	CheckDistribution
	()
,	"Hash distribution has become worse!"
);
