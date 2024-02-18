export module Meta.Auto.Array.Bounded;

export import Meta.Auto.Primary;

import Std;

export namespace
	Meta
{
	///	Empty array
	template
		<	typename
				t_tElement
		>
	struct
		Auto
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
		Auto
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
