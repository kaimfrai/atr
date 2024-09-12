export module Meta.Auto.Simd.Fill;

import Meta.Auto.Simd.Float;
import Meta.Auto.Simd.UInt32;
import Meta.Auto.Simd.UInt8;

import Std;

using ::Std::SimdOp;
using ::Std::SimdTarget;

export namespace
	Meta::Auto
{
	template
		<	typename
				t_tTarget
		>
	struct
		SimdFillFunction
	{};

	template
		<>
	struct
		SimdFillFunction
		<	float
				[	8uz
				]
		>
	{
		[[nodiscard]]
		auto static inline
		(	operator()
		)	(	float
					i_vSource
			)
			noexcept
		->	Simd<float[8uz]>
		{
			return
			{	.	m_vRaw
				=	SimdOp<float>::Broadcast
					(	i_vSource
					,	SimdTarget<float[8uz]>
					)
			};
		}
	};

	template
		<>
	struct
		SimdFillFunction
		<	float
				[	16uz
				]
		>
	{
		[[nodiscard]]
		auto static inline
		(	operator()
		)	(	float
					i_vSource
			)
			noexcept
		->	Simd<float[16uz]>
		{	return
			{	.	m_vRaw
				=	SimdOp<float>::Broadcast
					(	i_vSource
					,	SimdTarget<float[16uz]>
					)
			};
		}
	};

	template
		<>
	struct
		SimdFillFunction
		<	::std::int32_t
				[	8uz
				]
		>
	{
		[[nodiscard]]
		auto static inline
		(	operator()
		)	(	::std::int32_t
					i_vSource
			)
			noexcept
		->	Simd<::std::int32_t[8uz]>
		{	return
			{	.	m_vRaw
				=	SimdOp<::std::int32_t>::Broadcast
					(	i_vSource
					,	SimdTarget<::std::int32_t[8uz]>
					)
			};
		}
	};

	template
		<>
	struct
		SimdFillFunction
		<	::std::int32_t
				[	16uz
				]
		>
	{
		[[nodiscard]]
		auto static inline
		(	operator()
		)	(	::std::int32_t
					i_vSource
			)
			noexcept
		->	Simd<::std::int32_t[16uz]>
		{	return
			{	.	m_vRaw
				=	SimdOp<::std::int32_t>::Broadcast
					(	i_vSource
					,	SimdTarget<::std::int32_t[16uz]>
					)
			};
		}
	};

	template
		<>
	struct
		SimdFillFunction
		<	::std::uint32_t
				[	8uz
				]
		>
	{
		[[nodiscard]]
		auto static inline
		(	operator()
		)	(	::std::uint32_t
					i_vSource
			)
			noexcept
		->	Simd<::std::uint32_t[8uz]>
		{	return
			{	.	m_vRaw
				=	SimdOp<::std::uint32_t>::Broadcast
					(	i_vSource
					,	SimdTarget<::std::uint32_t[8uz]>
					)
			};
		}
	};

	template
		<>
	struct
		SimdFillFunction
		<	::std::uint32_t
				[	16uz
				]
		>
	{
		[[nodiscard]]
		auto static inline
		(	operator()
		)	(	::std::uint32_t
					i_vSource
			)
			noexcept
		->	Simd<::std::uint32_t[16uz]>
		{	return
			{	.	m_vRaw
				=	SimdOp<::std::uint32_t>::Broadcast
					(	i_vSource
					,	SimdTarget<::std::uint32_t[16uz]>
					)
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
