export module Meta.Auto.Simd.Cast;

import Meta.Auto.Simd.Float;
import Meta.Auto.Simd.Int32;
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
		SimdCastFunction
	{};

	template
		<>
	struct
		SimdCastFunction
		<	float
		>
	{
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	Simd<::std::uint32_t[8uz]>
					i_vSource
			)
			noexcept
		->	Simd<float[8uz]>
		{	return
			{	.	m_vRaw
				=	SimdOp<::std::uint32_t>::Convert
					(	i_vSource
						.	m_vRaw
					,	SimdTarget<float[8uz]>
					)
			};
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	Simd<::std::uint32_t[16uz]>
					i_vSource
			)
			noexcept
		->	Simd<float[16uz]>
		{	return
			{	.	m_vRaw
				=	{	SimdOp<::std::uint32_t>::Convert
						(	i_vSource
							.	m_vRaw
								[	0z
								]
						,	SimdTarget<float[8uz]>
						)
					,	SimdOp<::std::uint32_t>::Convert
						(	i_vSource
							.	m_vRaw
								[	1z
								]
						,	SimdTarget<float[8uz]>
						)
					}
			};
		}
	};

	template
		<>
	struct
		SimdCastFunction
		<	::std::int32_t
		>
	{
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	Simd<::std::uint8_t[8uz]>
					i_vSource
			)
			noexcept
		->	Simd<::std::int32_t[8uz]>
		{
			::std::uint64_t
				vValue
				[	2uz
				]
			{	i_vSource
				.	m_vRaw
			};

			return
			{	.	m_vRaw
				=	SimdOp<::std::uint8_t>::Convert
					(	::std::bit_cast<__m128i>
						(	vValue
						)
					,	SimdTarget<::std::int32_t[8uz]>
					)
			};
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	Simd<::std::uint8_t const(&)[8uz]>
					i_vSource
			)
			noexcept
		->	Simd<::std::int32_t[8uz]>
		{
			::std::uint8_t
				vValue
				[	16uz
				]
			{};
			auto const
				aData
			=	::std::assume_aligned<8uz>
				(	i_vSource
					.	m_aData
				)
			;
			::std::copy
			(	aData
			,		aData
				+	8uz
			,	vValue
			);

			return
			{	.	m_vRaw
				=	SimdOp<::std::uint8_t>::Convert
					(	::std::bit_cast<__m128i>
						(	vValue
						)
					,	SimdTarget<::std::int32_t[8uz]>
					)
			};
		}

		[[nodiscard]]
		auto static inline
		(	operator()
		)	(	Simd<::std::uint8_t[16uz]>
					i_vSource
			)
			noexcept
		->	Simd<::std::int32_t[16uz]>
		{	return
			{	.	m_vRaw
				=	{	SimdOp<::std::uint8_t>::Convert
						(	i_vSource
							.	m_vRaw
						,	SimdTarget<::std::int32_t[8uz]>
						)
					,	SimdOp<::std::uint8_t>::Convert
						(	SimdOp<::std::byte>::ByteShiftRight<8>
							(	i_vSource
								.	m_vRaw
							)
						,	SimdTarget<::std::int32_t[8uz]>
						)
					}
			};
		}
	};

	template
		<>
	struct
		SimdCastFunction
		<	::std::uint32_t
		>
	{
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	Simd<::std::uint8_t[8uz]>
					i_vSource
			)
			noexcept
		->	Simd<::std::uint32_t[8uz]>
		{
			::std::uint64_t
				vValue
				[	2uz
				]
			{	i_vSource
				.	m_vRaw
			};

			return
			{	.	m_vRaw
				=	SimdOp<::std::uint8_t>::Convert
					(	::std::bit_cast<__m128i>
						(	vValue
						)
					,	SimdTarget<::std::uint32_t[8uz]>
					)
			};
		}

		[[nodiscard]]
		auto static inline
		(	operator()
		)	(	Simd<::std::uint8_t[16uz]>
					i_vSource
			)
			noexcept
		->	Simd<::std::uint32_t[16uz]>
		{	return
			{	.	m_vRaw
				=	{	SimdOp<::std::uint8_t>::Convert
						(	i_vSource
							.	m_vRaw
						,	SimdTarget<::std::uint32_t[8uz]>
						)
					,	SimdOp<::std::uint8_t>::Convert
						(	SimdOp<::std::byte>::ByteShiftRight<8>
							(	i_vSource
								.	m_vRaw
							)
						,	SimdTarget<::std::uint32_t[8uz]>
						)
					}
			};
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
