export module Meta.Auto.Simd.Fill;

import Meta.Auto.Simd.Tag;
import Meta.IndexPack;

import std;

using ::Meta::IndexPack;

export namespace
	Meta::Auto
{
	template
		<	typename
				t_tTarget
		>
	struct
		SimdFillFunction
	{
		[[nodiscard]]
		auto static inline
		(	operator()
		)	(	::std::remove_extent_t<t_tTarget>
					i_vSource
			)
			noexcept
		->	Simd<t_tTarget>
		{
			auto const
			&	[	...
					rpDublicate
				]
			=	IndexPack
				<	::std::extent_v
					<	t_tTarget
					>
				>
			;
			return
			{	.	m_vRaw
				{	(	(void)rpDublicate
					,	i_vSource
					)
					...
				}
			};
		}
	};

	template
		<	typename
				t_tElement
		>
	SimdFillFunction<t_tElement> constexpr inline
		SimdFill
	{};
}
