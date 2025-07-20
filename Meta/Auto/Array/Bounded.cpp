export module Meta.Auto.Array.Bounded;

export import Meta.Auto.Bit.Field;
export import Meta.Auto.Var;

import std;

export namespace
	Meta::Auto
{
	///	Empty array
	template
		<	typename
				t_tElement
		>
	struct
		Var
		<	t_tElement
				[]
		>
	{};

	template
		<	typename
				t_tElement
		,	::std::size_t
				t_vExtent
		>
	struct
		Var
		<	t_tElement
				[	t_vExtent
				]
		>
	{
		t_tElement
			m_vRaw
			[	t_vExtent
			]
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	::std::size_t
					i_vIndex
			)	&
			noexcept
		->	t_tElement&
		{	return
				m_vRaw
				[	i_vIndex
				]
			;
		}
	};
}
