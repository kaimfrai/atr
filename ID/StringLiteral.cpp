export module ID.StringLiteral;

export import Std;

export import <Pack/Sequence.hpp>;

export import <Std/Concepts.hpp>;
export import <Std/Size.hpp>;

export namespace
	ID
{
	template
		<	Std::SSizeType
				t_nAddExtent
			=	0_sz
		,	Std::BoundedArray
				t_tArray
		>
	requires
		(	-t_nAddExtent
		<=	std::extent_v
			<	t_tArray
			>
		)
	constexpr
	auto
		IndexSequenceFor
		(	t_tArray const&
		)
	->	std::make_index_sequence
		<	std::extent_v
			<	t_tArray
			>
		+	t_nAddExtent
		>
	{	return{};	}

	/// converts a string literal into an object that can be dispatched into separate characters
	template
		<	Std::BoundedArray
				t_tArray
		>
	requires
		Std::Integral
		<	std::remove_extent_t
			<	t_tArray
			>
		>
	struct
		StringLiteral
	{
		using
			CharType
		=	std::remove_extent_t
			<	t_tArray
			>
		;

		/// the length or the array including the trailing '\0'
		static
		constexpr
		Std::USizeType
			ArrayExtent
		=	std::extent_v
			<	t_tArray
			>
		;

		//	the length of the string without the trailing '\0'
		static
		constexpr
		Std::USizeType
			CharacterCount
		=	ArrayExtent
		-	1_uz
		;

		static constexpr
		std::make_index_sequence
		<	CharacterCount
		>	CharacterIndexSequence
		{};

		using
			ArrayType
		=	t_tArray
		;

		ArrayType
			String
		;

		/// construct from integral pack
		template
			<	Std::Integral
				...	t_tpChar
			>
		requires
			(	sizeof...(t_tpChar)
			==	ArrayExtent
			)
		constexpr
		explicit
			StringLiteral
			(	t_tpChar
				...	i_vpChar
			)
		:	String
			{	i_vpChar
				...
			}
		{}

		/// construct from raw char array
		template
			<	std::size_t
				...	t_npIndex
			>
		requires
			(	sizeof...(t_npIndex)
			==	CharacterCount
			)
		constexpr
			StringLiteral
			(	CharType
				const
				*	i_aString
			,	std::index_sequence
				<	t_npIndex
					...
				>
			)
		:	StringLiteral
			{	i_aString
				[	t_npIndex
				]
				...
			,	CharType
				{}
			}
		{}

		/// construct from two char arrays
		template
			<	std::size_t
				...	t_npLeftIndex
			,	std::size_t
				...	t_npRightIndex
			>
		requires
			(	sizeof...(t_npLeftIndex)
			+	sizeof...(t_npRightIndex)
			==	CharacterCount
			)
		constexpr
			StringLiteral
			(	CharType
				const
				*	i_aLeftString
			,	std::index_sequence
				<	t_npLeftIndex
					...
				>
			,	CharType
				const
				*	i_aRightString
			,	std::index_sequence
				<	t_npRightIndex
					...
				>
			)
		:	StringLiteral
			{	i_aLeftString
				[	t_npLeftIndex
				]
				...
			,	i_aRightString
				[	t_npRightIndex
				]
				...
			,	CharType
				{}
			}
		{}

		/// construct from standard char array
		constexpr
		explicit
			StringLiteral
			(	std::array
				<	CharType
				,	ArrayExtent
				>
				const
				&	i_rString
			)
		:	StringLiteral
			{	i_rString
				.	data
					()
			,	CharacterIndexSequence
			}
		{}

		/// construct from raw char array
		constexpr
			StringLiteral
			(	CharType
				const
				(&	i_rString
				)[	ArrayExtent
				]
			)
		:	StringLiteral
			{	+
				i_rString
			,	CharacterIndexSequence
			}
		{}

		/// construct from sequence
		template
			<	CharType
				...	t_tpChar
			>
		requires
			(	sizeof...(t_tpChar)
			==	ArrayExtent
			)
		constexpr
		explicit
			StringLiteral
			(	Pack::Sequence
				<	CharType
				,	t_tpChar
					...
				>
			)
		:	StringLiteral
			{	t_tpChar
				...
			}
		{}

		/// index the underlying array
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	Std::USizeType
					i_nIndex
			)	const
		noexcept
		{	return
				String
				[	i_nIndex
				]
			;
		}

		constexpr
			operator ArrayType const&
			()	const
		{	return
				String
			;
		}

		/// default comparison based on std::array
		[[nodiscard]]
		friend
		constexpr
		auto
			operator<=>
			(	StringLiteral
				const&
			,	StringLiteral
				const&
			)
		=	default
		;

		template
			<	std::size_t
				...	t_npIndex
			>
		constexpr
		auto
			RangeEqualsAt
			(	std::size_t
					i_nOffset
			,	CharType
				const
				*	i_aContained
			,	std::index_sequence
				<	t_npIndex
					...
				>
			)	const
		->	bool
		{	return
				(	...
				and	(	i_aContained
						[	t_npIndex
						]
					==	String
						[	t_npIndex
						+	i_nOffset
						]
					)
				)
			;
		}

		template
			<	Std::USizeType
					t_nPrefixExtent
			>
		constexpr
		auto
			StartsWith
			(	CharType
				const
				(&	i_rPrefix
				)[	t_nPrefixExtent
				]
			)	const
		->	bool
		{	return
				RangeEqualsAt
				(	0_uz
				,	+i_rPrefix
				,	IndexSequenceFor
					<	-1
					>(	i_rPrefix
					)
				)
			;
		}

		template
			<	Std::USizeType
					t_nSuffixExtent
			>
		constexpr
		auto
			EndsWith
			(	CharType
				const
				(&	i_rSuffix
				)[	t_nSuffixExtent
				]
			)	const
		->	bool
		{	return
				RangeEqualsAt
				(	ArrayExtent
				-	t_nSuffixExtent
				,	+i_rSuffix
				,	IndexSequenceFor
					<	-1_sz
					>(	i_rSuffix
					)
				)
			;
		}

		template
			<	Std::USizeType
					t_nPrefixExtent
			>
		constexpr
		auto
			TrimFront
			(	CharType
				const
				(&	i_rPrefix
				)[	t_nPrefixExtent
				]
			)	const
		->	StringLiteral
			<	CharType
				[	ArrayExtent
				-	t_nPrefixExtent
				+	1_uz
				]
			>
		{
			if	(	StartsWith
					(	i_rPrefix
					)
				)
			{
				return
					{	String
					+	t_nPrefixExtent
					-	1_sz
					,	IndexSequenceFor
						<	-static_cast<Std::SSizeType>(t_nPrefixExtent)
						>(	String
						)
					}
				;
			}
			else
			{	//	won't compile in a constant expression
				throw;
			}
		}

		template
			<	Std::USizeType
					t_nSuffixExtent
			>
		constexpr
		auto
			TrimBack
			(	CharType
				const
				(&	i_rSuffix
				)[	t_nSuffixExtent
				]
			)	const
		->	StringLiteral
			<	CharType
				[	ArrayExtent
				-	t_nSuffixExtent
				+	1_uz
				]
			>
		{
			if	(	EndsWith
					(	i_rSuffix
					)
				)
			{	return
					{	String
					,	IndexSequenceFor
						<	-static_cast<Std::SSizeType>(t_nSuffixExtent)
						>(	String
						)
					}
				;
			}
			else
			{	//	won't compile in a constant expression
				throw
				;
			}
		}

		template
			<	Std::USizeType
					t_nAppendedExtent
			>
		friend
		constexpr
		auto
			operator+
			(	StringLiteral
				const
				&	i_rLeft
			,	StringLiteral
				<	CharType
					[	t_nAppendedExtent
					]
				> const
				&	i_rRight
			)
		->	StringLiteral
			<	CharType
				[	CharacterCount
				+	t_nAppendedExtent
				]
			>
		{	return
				{	i_rLeft
					.	String
				,	i_rLeft
					.	CharacterIndexSequence
				,	i_rRight
					.	String
				,	i_rRight
					.	CharacterIndexSequence
				}
			;
		}

		template
			<	Std::USizeType
					t_nArrayExtent
			>
		friend
		constexpr
		auto
			operator+
			(	CharType
				const
				(&	i_rArray
				)[	t_nArrayExtent
				]
			,	StringLiteral
				const
				&	i_rLiteral
			)
		{	return
				ID::StringLiteral
				{	i_rArray
				}
			+	i_rLiteral
			;
		}

		template
			<	Std::USizeType
					t_nArraySize
			>
		friend
		constexpr
		auto
			operator+
			(	StringLiteral
				const
				&	i_rLiteral
			,	CharType
				const
				(&	i_rArray
				)[	t_nArraySize
				]
			)
		{	return
				i_rLiteral
			+	ID::StringLiteral
				{	i_rArray
				}
			;
		}

		template
			<	Std::USizeType
					t_nArraySize
			>
		friend
		constexpr
		auto
			operator<<
			(	CharType
				const
				(&	i_rArray
				)[	t_nArraySize
				]
			,	StringLiteral
				const
				&	i_rLiteral
			)
		{	return
				i_rLiteral
				.	TrimFront
					(	i_rArray
					)
			;
		}

		template
			<	Std::USizeType
					t_nArraySize
			>
		friend
		constexpr
		auto
			operator>>
			(	StringLiteral
				const
				&	i_rLiteral
			,	CharType
				const
				(&	i_rArray
				)[	t_nArraySize
				]
			)
		{	return
				i_rLiteral
				.	TrimBack
					(	i_rArray
					)
			;
		}
	};

	/// construct from array
	template
		<	Std::Integral
				t_tChar
		,	Std::USizeType
				t_nExtent
		>
		StringLiteral
		(	t_tChar
			const
			(&
			)[	t_nExtent
			]
		)
	->	StringLiteral
		<	t_tChar
			[	t_nExtent
			]
		>
	;

	/// construct from sequence
	template
		<	Std::Integral
				t_tChar
		,	t_tChar
			...	t_tpChar
		>
		StringLiteral
		(	Pack::Sequence
			<	t_tChar
			,	t_tpChar
				...
			>
		)
	->	StringLiteral
		<	t_tChar
			[	sizeof...(
					t_tpChar
				)
			]
		>
	;

	template
		<	typename
				t_tStringLiteral
		>
	concept
		StringLiteralInstance
	=	Std::TypePackInstanceOf
		<	t_tStringLiteral
		,	StringLiteral
		>
	;

	template
		<	typename
				t_tStringLiteral
		>
	concept
		PseudoStringLiteral
	=	StringLiteralInstance
		<	t_tStringLiteral
		>
	or	Std::ConvertibleToTypePackInstance
		<	t_tStringLiteral
		,	ID::StringLiteral
		>
	;

}

static_assert
	(	ID::StringLiteralInstance
		<	ID::StringLiteral
			<	char[5]
			>
		>
	and	not
		ID::StringLiteralInstance
		<	char const(&)[5]
		>
	)
;

static_assert
	(	ID::PseudoStringLiteral
		<	ID::StringLiteral
			<	char[5]
			>
		>
	and	ID::PseudoStringLiteral
		<	char const(&)[5]
		>
	)
;

static_assert
	(	ID::StringLiteral
		{	"ABCD"
		}.	StartsWith
			(	"AB"
			)
	)
;
static_assert
	(	(	"AB"
		<<	ID::StringLiteral
			{	"ABCD"
			}
		)
	==	ID::StringLiteral
		{	"CD"
		}
	)
;
static_assert
	(	ID::StringLiteral
		{	"ABCD"
		}.	EndsWith
			(	"CD"
			)
	)
;
static_assert
	(	(	ID::StringLiteral
			{	"ABCD"
			}
		>>	"CD"
		)
	==	ID::StringLiteral
		{	"AB"
		}
	)
;
static_assert
	(	ID::StringLiteral
		{	"AB"
		}
	+	"CD"
	==	"AB"
	+	ID::StringLiteral
		{	"CD"
		}
	)
;
