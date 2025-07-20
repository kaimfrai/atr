export module ATR.Member.AlignBufferView;

import std;

export namespace
	ATR::Member
{
	template
		<	typename
				t_tElement
		>
	struct
		AlignBufferView
	{
		t_tElement
		*	const
			Elements
		;

		short
		&	ElementCount
		;

		[[nodiscard]]
		explicit(false) constexpr inline
		(	operator
			AlignBufferView<t_tElement const>
		)	()	const
		{	return
			{	Elements
			,	ElementCount
			};
		}

		auto constexpr inline
		(	emplace_back
		)	(	auto
				&&
				...	i_rElement
			)	const
			noexcept
		->	auto&
		{	return
			*	::std::construct_at
				(	&	Elements
						[	ElementCount
							++
						]
				,	static_cast<decltype(i_rElement)>
					(	i_rElement
					)
					...
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const
			noexcept
		->	t_tElement
			*
		{	return
				Elements
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	const
			noexcept
		->	t_tElement
			*
		{	return
				Elements
			+	ElementCount
			;
		}
	};

	template
		<	typename
				t_tElement
		>
	struct
		AlignBufferView
		<	t_tElement const
		>
	{
		t_tElement const
		*	const
			Elements
		;

		short const
			ElementCount
		;

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const
			noexcept
		->	t_tElement const
			*
		{	return
				Elements
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	const
			noexcept
		->	t_tElement const
			*
		{	return
				Elements
			+	ElementCount
			;
		}
	};

	template
		<	typename
				t_tElement
		>
	(	AlignBufferView
	)	(	t_tElement
			*
		,	short
		)
	->	AlignBufferView
		<	t_tElement
		>
	;
}
