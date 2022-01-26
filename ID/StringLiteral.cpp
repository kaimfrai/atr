export module ID.StringLiteral;

export import Meta.Integer;

export import Std;
export import Std.Concepts;

export namespace
	ID
{
	/// converts a string literal into an object that can be dispatched into separate characters
	template
		<	Meta::USize
				t_nExtent
		>
	struct
		StringLiteral
	{
		static Meta::USize constexpr Extent = t_nExtent;
		static std::make_index_sequence<t_nExtent> constexpr
			CharacterIndexSequence
		{};

		char
			String
			[	t_nExtent
			]
		;

		/// construct from raw char array
		template
			<	Meta::USize
				...	t_npIndex
			>
		requires
			(	sizeof...(t_npIndex)
			==	t_nExtent
			)
		constexpr
			StringLiteral
			(	char const
				*	i_aString
			,	std::index_sequence
				<	t_npIndex
					...
				>
			)
		:	String
			{	i_aString
				[	t_npIndex
				]
				...
			}
		{}

		/// construct from raw char array
		constexpr
			StringLiteral
			(	char const
				(&	i_rString
				)	[	t_nExtent
					]
			)
		:	StringLiteral
			{	+i_rString
			,	CharacterIndexSequence
			}
		{}

		/// index the underlying array
		[[nodiscard]]
		auto constexpr
			operator[]
			(	Meta::USize
					i_nIndex
			)	const
		noexcept
		{	return
				String
				[	i_nIndex
				]
			;
		}
	};

	/// construct from array
	template
		<	Meta::USize
				t_nExtent
		>
		StringLiteral
		(	char const
			(&
			)	[	t_nExtent
				]
		)
	->	StringLiteral
		<	t_nExtent
		>
	;

	template
		<	typename
				t_tStringLiteral
		>
	concept
		StringLiteralInstance
	=	Std::ValuePackInstanceOf
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
	or	Std::ConvertibleToValuePackInstance
		<	t_tStringLiteral
		,	ID::StringLiteral
		>
	;

}

static_assert
(	ID::StringLiteralInstance
	<	ID::StringLiteral
		<	5
		>
	>
and	not
	ID::StringLiteralInstance
	<	char const(&)[5]
	>
);

static_assert
(	ID::PseudoStringLiteral
	<	ID::StringLiteral
		<	5
		>
	>
and	ID::PseudoStringLiteral
	<	char const(&)[5]
	>
);
