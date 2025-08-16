export module Meta.String.Literal;

import Meta.String.Chain;

import std;

export namespace
	Meta::String
{
	template
		<	::std::size_t
				t_vExtent
		>
	struct
		Literal final
	{
		char
			Buffer
			[	t_vExtent
			+	1uz
			]
		{};

		[[nodiscard]]
		auto static constexpr inline
		(	max_size
		)	()
			noexcept
		->	::std::size_t
		{	return
				t_vExtent
			;
		}

		[[nodiscard]]
		auto constexpr inline
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

		explicit(false) constexpr inline
		(	Literal
		)	()
			noexcept
		=	default;

		explicit(false) constexpr inline
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

		explicit(false) constexpr inline
		(	Literal
		)	(	::std::initializer_list
				<	char
				>
					i_vString
			)
			noexcept
		:	Literal
			{	data
				(	i_vString
				)
			}
		{}

		[[nodiscard]]
		explicit(false) constexpr inline
		(	operator
			Chain
		)	()	const&
			noexcept
		{	return
			{	+
				Buffer
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	::std::size_t
					i_vIndex
			)	const
			noexcept
		->	char
		{	return
			Buffer
			[	i_vIndex
			];
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	Literal const
				&
			,	Literal const
				&
			)
			noexcept
		->	bool
		=	default;
	};

	template
		<	::std::size_t
				t_vExtent
		>
	(	Literal
	)	(	Literal<t_vExtent>
		)
	->	Literal
		<	t_vExtent
		>
	;

	template
		<	::std::size_t
				t_vExtent
		>
	(	Literal
	)	(	char const
			(&)	[	t_vExtent
				]
		)
	->	Literal
		<	t_vExtent
		-	1uz
		>
	;

	template
		<	typename
			...	t_tChar
		>
	(	Literal
	)	(	t_tChar
			...
		)
	->	Literal
		<	sizeof...(t_tChar)
		-	1uz
		>
	;
}
