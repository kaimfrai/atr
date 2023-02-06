export module Meta.ID.StringLiteral;

import Std;

export namespace
	Meta
{
	template
		<	::std::size_t
				t_nExtent
		>
	struct
		StringLiteral final
	{
		[[no_unique_address]]
		::std::array<char, t_nExtent>
			Buffer
		;

		[[nodiscard]]
		static auto constexpr
		(	size
		)	()
			noexcept
		->	::std::size_t
		{	return t_nExtent;	}

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
		:	Buffer
			{	[	i_aString
				]	<	::std::size_t
						...	t_npIndex
					>(	::std::index_sequence
						<	t_npIndex
							...
						>
					)
				->	::std::array<char, t_nExtent>
				{	return
					{	*
						::std::next
						(	i_aString
						,	t_npIndex
						)
						...
					};
				}(	::std::make_index_sequence
					<	t_nExtent
					>{}
				)
			}
		{}

		[[nodiscard]]
		auto constexpr
		(	operator []
		)	(	::std::size_t
					i_nIndex
			)	&
			noexcept
		->	char&
		{	return
			Buffer
			[	i_nIndex
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator []
		)	(	::std::size_t
					i_nIndex
			)	const&
			noexcept
		->	char const&
		{	return
			Buffer
			[	i_nIndex
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator []
		)	(	::std::size_t
					i_nIndex
			)	&&
			noexcept
		->	char
		{	return
			Buffer
			[	i_nIndex
			];
		}

		[[nodiscard]]
		auto constexpr
		(	starts_with
		)	(	::std::string_view
					i_vPrefix
			)	const
			noexcept
		->	bool
		{	return
				::std::string_view
				{	Buffer.data()
				,	t_nExtent
				}
			.	starts_with
				(	i_vPrefix
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	ends_with
		)	(	::std::string_view
					i_vPrefix
			)	const
			noexcept
		->	bool
		{	return
				::std::string_view
				{	Buffer.data()
				,	t_nExtent
				}
			.	ends_with
				(	i_vPrefix
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	&
			noexcept
		{	return Buffer.begin();	}

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	const&
			noexcept
		{	return Buffer.begin();	}

		auto begin() && = delete;

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	&
			noexcept
		{	return Buffer.end();	}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	const&
			noexcept
		{	return Buffer.end();	}

		auto end() && = delete;
	};

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
