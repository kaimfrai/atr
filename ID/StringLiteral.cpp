export module ID.StringLiteral;

export import Meta.Integer;

export import Std;
export import Std.Concepts;

export namespace
	ID
{
	/// converts a string literal into an object that can be dispatched into separate characters
	template
		<	Std::BoundedArray
				t_tArray
		>
	struct
		StringLiteral
	{
		/// the length or the array including the trailing '\0'
		static Meta::USize constexpr
			ArrayExtent
		=	std::extent_v
			<	t_tArray
			>
		;

		//	the length of the string without the trailing '\0'
		static Meta::USize constexpr
			CharacterCount
		=	ArrayExtent
		-	1uz
		;

		static std::make_index_sequence<CharacterCount> constexpr
			CharacterIndexSequence
		{};

		t_tArray
			String
		;

		/// construct from raw char array
		template
			<	Meta::USize
				...	t_npIndex
			>
		requires
			(	sizeof...(t_npIndex)
			==	CharacterCount
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
			,	'\0'
			}
		{}

		/// construct from raw char array
		constexpr
			StringLiteral
			(	char const
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
		<	Std::Integral
				t_tChar
		,	Meta::USize
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
);

static_assert
(	ID::PseudoStringLiteral
	<	ID::StringLiteral
		<	char[5]
		>
	>
and	ID::PseudoStringLiteral
	<	char const(&)[5]
	>
);
