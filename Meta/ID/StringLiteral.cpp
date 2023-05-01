export module Meta.ID.StringLiteral;

import Std;

export namespace
	Meta
{
	struct
		StringView
	:	::std::string_view
	{
		using
			::std::string_view
		::	string_view
		;

		[[nodiscard]]
		friend
		auto constexpr
		(	operator<=>
		)	(	StringView
			,	StringView
			)
			noexcept
		=	default;
	};

	template
		<	::std::size_t
				t_nExtent
		>
	struct
		StringLiteral final
	{
		[[no_unique_address]]
		char
			Buffer
			[	t_nExtent
			+	1uz
			]
		{};

		[[nodiscard]]
		explicit(false) constexpr
		(	operator
			StringView
		)	()	const
		{	return
			{	::std::data
				(	Buffer
				)
			};
		}

		[[nodiscard]]
		auto static constexpr
		(	max_size
		)	()
			noexcept
		->	::std::size_t
		{	return
				t_nExtent
			;
		}

		[[nodiscard]]
		auto constexpr
		(	size
		)	()	const
			noexcept
		->	::std::size_t
		{	return
				::std::char_traits
				<	char
				>
			::	length
				(	Buffer
					.	data
						()
				)
			;
		}

		explicit(false) constexpr
		(	StringLiteral
		)	()
			noexcept
		=	default;

		explicit(false) constexpr
		(	StringLiteral
		)	(	char const
				*	i_aString
			)
			noexcept
		{
			for	(	auto
						aBuffer
					=	::std::begin
						(	Buffer
						)
				;	*	i_aString
					!=	'\0'
				;	i_aString
					=	::std::next
						(	i_aString
						)
				,	aBuffer
					=	::std::next
						(	aBuffer
						)
				)
			{	*	aBuffer
				=	*
					i_aString
				;
			}
		}

		explicit(true) constexpr
		(	StringLiteral
		)	(	::std::initializer_list<char>
					i_rString
			)
			noexcept
		:	StringLiteral
			{	data
				(	i_rString
				)
			}
		{}

		explicit(true) constexpr
		(	StringLiteral
		)	(	::std::initializer_list<StringView>
					i_rStringList
			)
			noexcept
		{
			for	(	auto
						aPosition
					=	::std::begin
						(	Buffer
						)
				;	auto
						rString
				:	i_rStringList
				)
			{
				aPosition
				=	::std::copy
					(	rString
						.	begin
							()
					,	rString
						.	end
							()
					,	aPosition
					)
				;
			}
		}

		auto constexpr
		(	operator=
		)	(	StringView
					i_rString
			)	&
			noexcept
		{
			*	::std::copy
				(	i_rString
					.	begin
						()
				,	i_rString
					.	end
						()
				,	::std::begin
					(	Buffer
					)
				)
			=	'\0'
			;

			return
			*	this
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	::std::size_t
					i_nIndex
			)	const
			noexcept
		->	char
		{	return
			Buffer
			[	i_nIndex
			];
		}


		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	&
			noexcept
		{	return
			::std::begin
			(	Buffer
			);
		}

		[[nodiscard]]
		auto friend constexpr
		(	operator==
		)	(	StringLiteral const
				&
			,	StringLiteral const
				&
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		auto friend constexpr
		(	operator<=>
		)	(	StringLiteral const
				&	i_rLeft
			,	StringLiteral const
				&	i_rRight
			)
			noexcept
		->	::std::strong_ordering
		{	return
			::std::lexicographical_compare_three_way
			(	i_rLeft
				.	begin
					()
			,	i_rLeft
				.	end
					()
			,	i_rRight
				.	begin
					()
			,	i_rRight
				.	end
					()
			);
		}
	};

	template
		<	typename
			...	t_tpChar
		>
	(	StringLiteral
	)	(	char
		,	t_tpChar
			...
		)
	->	StringLiteral
		<	sizeof...(t_tpChar)
		>
	;

	template
		<	::std::size_t
				t_nExtent
		>
	(	StringLiteral
	)	(	StringLiteral<t_nExtent>
		)
	->	StringLiteral
		<	t_nExtent
		>
	;

	template
		<	::std::size_t
				t_nExtent
		>
	(	StringLiteral
	)	(	char const
			(&)	[	t_nExtent
				]
		)
	->	StringLiteral
		<	t_nExtent
		-	1uz
		>
	;
}
