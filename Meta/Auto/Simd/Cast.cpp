export module Meta.Auto.Simd.Cast;

import Meta.Auto.Simd.Tag;

import std;

export namespace
	Meta::Auto
{
	template
		<	typename
				t_tTarget
		>
	struct
		SimdCastFunction
	{
		template
			<	typename
					t_tOrigin
			,	::std::size_t
					t_vSize
			>
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	Simd<t_tOrigin[t_vSize]>
					i_vSource
			)
			noexcept
		->	Simd<t_tTarget[t_vSize]>
		{
			auto const
			&	[	...
					rpElement
				]
			=	i_vSource
				.	m_vRaw
			;
			return
			{	.	m_vRaw
				{	static_cast<t_tTarget>
					(	rpElement
					)
					...
				}
			};
		}

		template
			<	typename
					t_tOrigin
			,	::std::size_t
					t_vSize
			>
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	Simd<t_tOrigin const(&)[t_vSize]>
					i_vSource
			)
			noexcept
		->	Simd<t_tTarget[t_vSize]>
		{
			return
			operator()
			(	static_cast<Simd<t_tOrigin[t_vSize]>>
				(	i_vSource
				)
			);
		}
	};

	template
		<	typename
				t_tElement
		>
	SimdCastFunction<t_tElement> constexpr inline
		SimdCast
	{};
}
