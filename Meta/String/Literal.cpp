export module Meta.String.Literal;

import Std;

export namespace
	Meta::String
{
	template
		<	::std::size_t
				t_nExtent
		>
	struct
		Literal final
	{
		char
			Buffer
			[	t_nExtent
			+	1uz
			]
		{};

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
		(	Literal
		)	()
			noexcept
		=	default;

		explicit(false) constexpr
		(	Literal
		)	(	char const
				*	i_aString
			)
			noexcept
		{
			for	(	char
					*	aBuffer
					=	+Buffer
				;	*	i_aString
					!=	'\0'
				;	++	i_aString
				,	++	aBuffer
				)
			{	*	aBuffer
				=	*	i_aString
				;
			}
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
		)	(	Literal const
				&
			,	Literal const
				&
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		auto friend constexpr
		(	operator<=>
		)	(	Literal const
				&	i_rLeft
			,	Literal const
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
		<	::std::size_t
				t_nExtent
		>
	(	Literal
	)	(	Literal<t_nExtent>
		)
	->	Literal
		<	t_nExtent
		>
	;

	template
		<	::std::size_t
				t_nExtent
		>
	(	Literal
	)	(	char const
			(&)	[	t_nExtent
				]
		)
	->	Literal
		<	t_nExtent
		-	1uz
		>
	;
}
