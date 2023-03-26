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
		::std::array<char, t_nExtent + 1uz>
			Buffer
		{};

		[[nodiscard]]
		explicit(false) constexpr
		(	operator
			StringView
		)	()	const
		{	return
			{	Buffer
				.	data
					()
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
					=	Buffer
						.	begin
							()
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
					=	Buffer
						.	begin
							()
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
				,	Buffer
					.	begin
						()
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
			Buffer
			.	begin
				()
			;
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
