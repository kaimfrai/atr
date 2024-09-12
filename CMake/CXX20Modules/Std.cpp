module;

#include <immintrin.h>

export module Std;

export import <std.hpp>;

export
{
	using ::__m256i;
	using ::__m256;
	using ::__m512i;
	using ::__m512;
	using ::__mmask8;
	using ::__mmask16;
	using ::__mmask32;
	using ::__mmask64;
}

export namespace
	Std
{
	template
		<	typename
				t_tTarget
		>
	struct
		SimdTargetTag
	{};

	template
		<	typename
				t_tTarget
		>
	SimdTargetTag<t_tTarget> constexpr inline
		SimdTarget
	{};

	template
		<	typename
				t_tTarget
		>
	using
		SimdTargetTag256
	=	SimdTargetTag
		<	t_tTarget
				[	sizeof(__m256)
				/	sizeof(t_tTarget)
				]
		>
	;

	template
		<	typename
				t_tTarget
		>
	using
		SimdTargetTag512
	=	SimdTargetTag
		<	t_tTarget
				[	sizeof(__m512)
				/	sizeof(t_tTarget)
				]
		>
	;

	template
		<	typename
				t_tSource
		>
	struct
		SimdOp
	{};

	template
		<	typename
				t_tObject
		,	::std::size_t
				t_vAlign
			=	1uz
		>
	requires
		(	t_vAlign
		>	0uz
		)
	struct
		AlignedPointer
	{
		t_tObject
		*	m_aObject
		;

		template
			<	typename
					t_tTarget
			>
		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator t_tTarget*
		)	()
			noexcept
		{	if	constexpr
				(	::std::is_void_v
					<	t_tObject
					>
				)
			{	return
				::std::assume_aligned
				<	t_vAlign
				>(	static_cast<t_tTarget*>
					(	m_aObject
					)
				);
			}
			else
			{	return
				::std::assume_aligned
				<	t_vAlign
				*	alignof(t_tObject)
				>(	static_cast<t_tTarget*>
					(	m_aObject
					)
				);
			}
		}
	};

	template
		<>
	struct
		SimdOp
		<	::std::byte
		>
	{
		template
			<	int
					t_vShift
			>
		[[nodiscard]]
		auto static constexpr inline
		(	ByteShiftRight
		)	(	__m128i
					i_vBytes
			)
			noexcept
		->	__m128i
		{	return
			_mm_srli_si128
			(	i_vBytes
			,	t_vShift
			);
		}
	};

	template
		<>
	struct
		SimdOp
		<	::std::int32_t
		>
	{
		[[nodiscard]]
		auto static constexpr inline
		(	BitShiftLeft
		)	(	__m256i
					i_vSource
			,	int
					i_vShift
			)
			noexcept
		->	__m256i
		{	return
			_mm256_slli_epi32
			(	i_vSource
			,	i_vShift
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	BitShiftLeft
		)	(	__m512i
					i_vSource
			,	unsigned
					i_vShift
			)
			noexcept
		->	__m512i
		{	return
			_mm512_slli_epi32
			(	i_vSource
			,	i_vShift
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	BitShiftLeft
		)	(	__m256i
					i_vSource
			,	__m256i
					i_vShift
			)
			noexcept
		->	__m256i
		{	return
			_mm256_sllv_epi32
			(	i_vSource
			,	i_vShift
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	BitShiftLeft
		)	(	__m512i
					i_vSource
			,	__m512i
					i_vShift
			)
			noexcept
		->	__m512i
		{	return
			_mm512_sllv_epi32
			(	i_vSource
			,	i_vShift
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Convert
		)	(	__m256i
					i_vSource
			,	SimdTargetTag256<float>
			)
			noexcept
		->	__m256
		{	return
			_mm256_cvtepi32_ps
			(	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Convert
		)	(	__m512i
					i_vSource
			,	SimdTargetTag512<float>
			)
			noexcept
		->	__m512
		{	return
			_mm512_cvtepi32_ps
			(	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Broadcast
		)	(	__m128i
					i_vSource
			,	SimdTargetTag256<::std::int32_t>
			)
			noexcept
		->	__m256i
		{	return
			_mm256_broadcastd_epi32
			(	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Broadcast
		)	(	__m128i
					i_vSource
			,	SimdTargetTag512<::std::int32_t>
			)
			noexcept
		->	__m512i
		{	return
			_mm512_broadcastd_epi32
			(	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Broadcast
		)	(	::std::int32_t
					i_vSource
			,	SimdTargetTag256<::std::int32_t>
			)
			noexcept
		->	__m256i
		{	return
			_mm256_set1_epi32
			(	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Broadcast
		)	(	::std::int32_t
					i_vSource
			,	SimdTargetTag512<::std::int32_t>
			)
			noexcept
		->	__m512i
		{	return
			_mm512_set1_epi32
			(	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Equal
		)	(	__m256i
					i_vLeft
			,	__m256i
					i_vRight
			)
			noexcept
		->	__mmask8
		{	return
			_mm256_cmpeq_epu32_mask
			(	i_vLeft
			,	i_vRight
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	HighestBit
		)	(	__m256i
					i_vSource
			)
			noexcept
		->	__mmask8
		{	return
			_mm256_movepi32_mask
			(	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	HighestBit
		)	(	__m512i
					i_vSource
			)
			noexcept
		->	__mmask16
		{	return
			_mm512_movepi32_mask
			(	i_vSource
			);
		}
	};

	template
		<>
	struct
		SimdOp
		<	::std::uint32_t
		>
	{
		[[nodiscard]]
		auto static constexpr inline
		(	BitShiftLeft
		)	(	__m256i
					i_vSource
			,	int
					i_vShift
			)
			noexcept
		->	__m256i
		{	return
			SimdOp<::std::int32_t>
			::	BitShiftLeft
				(	i_vSource
				,	i_vShift
				)
			;
		}
		[[nodiscard]]
		auto static constexpr inline
		(	BitShiftLeft
		)	(	__m512i
					i_vSource
			,	unsigned
					i_vShift
			)
			noexcept
		->	__m512i
		{	return
			SimdOp<::std::int32_t>
			::	BitShiftLeft
				(	i_vSource
				,	i_vShift
				)
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	BitShiftLeft
		)	(	__m256i
					i_vSource
			,	__m256i
					i_vShift
			)
			noexcept
		->	__m256i
		{	return
			SimdOp<::std::int32_t>
			::	BitShiftLeft
				(	i_vSource
				,	i_vShift
				)
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	BitShiftLeft
		)	(	__m512i
					i_vSource
			,	__m512i
					i_vShift
			)
			noexcept
		->	__m512i
		{	return
			SimdOp<::std::int32_t>
			::	BitShiftLeft
				(	i_vSource
				,	i_vShift
				)
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Convert
		)	(	__m256i
					i_vSource
			,	SimdTargetTag256<float>
			)
			noexcept
		->	__m256
		{	return
			_mm256_cvtepu32_ps
			(	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Convert
		)	(	__m512i
					i_vSource
			,	SimdTargetTag512<float>
			)
			noexcept
		->	__m512
		{	return
			_mm512_cvtepu32_ps
			(	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Broadcast
		)	(	__m128i
					i_vSource
			,	SimdTargetTag256<::std::uint32_t>
			)
			noexcept
		->	__m256i
		{	return
			SimdOp<::std::int32_t>
			::	Broadcast
				(	i_vSource
				,	SimdTargetTag256<::std::int32_t>
					{}
				)
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Broadcast
		)	(	__m128i
					i_vSource
			,	SimdTargetTag512<::std::uint32_t>
			)
			noexcept
		->	__m512i
		{	return
			SimdOp<::std::int32_t>
			::	Broadcast
				(	i_vSource
				,	SimdTargetTag512<::std::int32_t>
					{}
				)
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Broadcast
		)	(	::std::uint32_t
					i_vSource
			,	SimdTargetTag256<::std::uint32_t>
			)
			noexcept
		->	__m256i
		{	return
			SimdOp<::std::int32_t>
			::	Broadcast
				(	static_cast<::std::int32_t>
					(	i_vSource
					)
				,	SimdTargetTag256<::std::int32_t>
					{}
				)
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Broadcast
		)	(	::std::uint32_t
					i_vSource
			,	SimdTargetTag512<::std::uint32_t>
			)
			noexcept
		->	__m512i
		{	return
			SimdOp<::std::int32_t>
			::	Broadcast
				(	static_cast<::std::int32_t>
					(	i_vSource
					)
				,	SimdTargetTag512<::std::int32_t>
					{}
				)
			;
		}
	};

	template
		<>
	struct
		SimdOp
		<	::std::uint8_t
		>
	{
		[[nodiscard]]
		auto static constexpr inline
		(	Convert
		)	(	__m128i
					i_vSource
			,	SimdTargetTag256<::std::int32_t>
			)
			noexcept
		->	__m256i
		{	return
			_mm256_cvtepu8_epi32
			(	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Convert
		)	(	__m128i
					i_vSource
			,	SimdTargetTag512<::std::int32_t>
			)
			noexcept
		->	__m512i
		{	return
			_mm512_cvtepu8_epi32
			(	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Convert
		)	(	__m128i
					i_vSource
			,	SimdTargetTag256<::std::uint32_t>
			)
			noexcept
		->	__m256i
		{	return
			Convert
			(	i_vSource
			,	SimdTargetTag256<::std::int32_t>
				{}
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Convert
		)	(	__m128i
					i_vSource
			,	SimdTargetTag512<::std::uint32_t>
			)
			noexcept
		->	__m512i
		{	return
			Convert
			(	i_vSource
			,	SimdTargetTag512<::std::int32_t>
				{}
			);
		}
	};

	template
		<>
	struct
		SimdOp
		<	float
		>
	{
		[[nodiscard]]
		auto static constexpr inline
		(	Add
		)	(	__m128
					i_vLeft
			,	__m128
					i_vRight
			)
			noexcept
		->	__m128
		{	return
				// TODO use _mm_add_ps
				i_vLeft
			+	i_vRight
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Add
		)	(	__m256
					i_vLeft
			,	__m256
					i_vRight
			)
			noexcept
		->	__m256
		{	return
			_mm256_add_ps
			(	i_vLeft
			,	i_vRight
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Add
		)	(	__m512
					i_vLeft
			,	__m512
					i_vRight
			)
			noexcept
		->	__m512
		{	return
			_mm512_add_ps
			(	i_vLeft
			,	i_vRight
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Multiply
		)	(	__m256
					i_vLeft
			,	__m256
					i_vRight
			)
			noexcept
		->	__m256
		{	return
			_mm256_mul_ps
			(	i_vLeft
			,	i_vRight
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Multiply
		)	(	__m512
					i_vLeft
			,	__m512
					i_vRight
			)
			noexcept
		->	__m512
		{	return
			_mm512_mul_ps
			(	i_vLeft
			,	i_vRight
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Blend
		)	(	__mmask8
					i_vMask
			,	__m256
					i_vLeft
			,	__m256
					i_vRight
			)
			noexcept
		->	__m256
		{	return
			_mm256_mask_blend_ps
			(	i_vMask
			,	i_vLeft
			,	i_vRight
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Blend
		)	(	__mmask16
					i_vMask
			,	__m512
					i_vLeft
			,	__m512
					i_vRight
			)
			noexcept
		->	__m512
		{	return
			_mm512_mask_blend_ps
			(	i_vMask
			,	i_vLeft
			,	i_vRight
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Permute
		)	(	__m256i
					i_vOffsets
			,	__m256
					i_vSource
			)
			noexcept
		->	__m256
		{	return
			_mm256_permutexvar_ps
			(	i_vOffsets
			,	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Permute
		)	(	__m512i
					i_vOffsets
			,	__m512
					i_vSource
			)
			noexcept
		->	__m512
		{	return
			_mm512_permutexvar_ps
			(	i_vOffsets
			,	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Broadcast
		)	(	__m128
					i_vSource
			,	SimdTargetTag256<float>
			)
			noexcept
		->	__m256
		{	return
			_mm256_broadcastss_ps
			(	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Broadcast
		)	(	__m128
					i_vSource
			,	SimdTargetTag512<float>
			)
			noexcept
		->	__m512
		{	return
			_mm512_broadcastss_ps
			(	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Broadcast
		)	(	float
					i_vSource
			,	SimdTargetTag256<float>
			)
			noexcept
		->	__m256
		{	return
			_mm256_set1_ps
			(	i_vSource
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Broadcast
		)	(	float
					i_vSource
			,	SimdTargetTag512<float>
			)
			noexcept
		->	__m512
		{	return
			_mm512_set1_ps
			(	i_vSource
			);
		}

		template
			<	::std::size_t
					t_vAlign
			>
		[[nodiscard]]
		auto static constexpr inline
		(	Load
		)	(	AlignedPointer<void const, t_vAlign>
					i_aData
			,	SimdTargetTag256<float>
			)
			noexcept
		->	__m256
		{
			if	constexpr
				(	t_vAlign
				>=	alignof(__m256)
				)
			{	return
				_mm256_load_ps
				(	static_cast<float const*>(i_aData)
				);
			}
			else
			{	return
				_mm256_loadu_ps
				(	static_cast<float const*>(i_aData)
				);
			}
		}

		template
			<	::std::size_t
					t_vAlign
			>
		[[nodiscard]]
		auto static constexpr inline
		(	Load
		)	(	AlignedPointer<void const, t_vAlign>
					i_aData
			,	SimdTargetTag512<float>
			)
			noexcept
		->	__m512
		{
			if	constexpr
				(	t_vAlign
				>=	alignof(__m512)
				)
			{	return
				_mm512_load_ps
				(	static_cast<void const*>(i_aData)
				);
			}
			else
			{	return
				_mm512_loadu_ps
				(	static_cast<void const*>(i_aData)
				);
			}
		}

		template
			<	::std::size_t
					t_vAlign
			>
		[[nodiscard]]
		auto static constexpr inline
		(	MaskedLoad
		)	(	__mmask8
					i_vMask
			,	AlignedPointer<void const, t_vAlign>
					i_aData
			)
			noexcept
		->	__m256
		{
			if	constexpr
				(	t_vAlign
				>=	alignof(__m256)
				)
			{
				return
				_mm256_maskz_load_ps
				(	i_vMask
				,	static_cast<void const*>(i_aData)
				);
			}
			else
			{	return
				_mm256_maskz_loadu_ps
				(	i_vMask
				,	static_cast<void const*>(i_aData)
				);
			}
		}

		template
			<	::std::size_t
					t_vAlign
			>
		[[nodiscard]]
		auto static constexpr inline
		(	MaskedLoad
		)	(	__mmask16
					i_vMask
			,	AlignedPointer<void const, t_vAlign>
					i_aData
			)
			noexcept
		->	__m512
		{
			if	constexpr
				(	t_vAlign
				>=	alignof(__m512)
				)
			{
				return
				_mm512_maskz_load_ps
				(	i_vMask
				,	static_cast<void const*>(i_aData)
				);
			}
			else
			{	return
				_mm512_maskz_loadu_ps
				(	i_vMask
				,	static_cast<void const*>(i_aData)
				);
			}
		}

		template
			<	::std::size_t
					t_vAlign
			>
		auto static constexpr inline
		(	Store
		)	(	AlignedPointer<void, t_vAlign>
					o_aData
			,	__m256
					i_vSource
			)
			noexcept
		->	void
		{	if	constexpr
				(	t_vAlign
				>=	alignof(__m256)
				)
			{	return
				_mm256_store_ps
				(	static_cast<float*>(o_aData)
				,	i_vSource
				);
			}
			else
			{	return
				_mm256_storeu_ps
				(	+o_aData
				,	i_vSource
				);
			}
		}

		template
			<	::std::size_t
					t_vAlign
			>
		auto static constexpr inline
		(	Store
		)	(	AlignedPointer<void, t_vAlign>
					o_aData
			,	__m512
					i_vSource
			)
			noexcept
		->	void
		{	if	constexpr
				(	t_vAlign
				>=	alignof(__m512)
				)
			{	return
				_mm512_store_ps
				(	static_cast<void*>(o_aData)
				,	i_vSource
				);
			}
			else
			{	return
				_mm512_storeu_ps
				(	static_cast<void*>(o_aData)
				,	i_vSource
				);
			}
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Reduce
		)	(	__m128
					i_vSource
			)
			noexcept
		->	float
		{
			struct F_4 { float f[4]; };
			auto [vF0, vF1, vF2, vF3] = ::std::bit_cast<F_4>(i_vSource).f;
			return
				(	vF0
				+	vF1
				)
			+	(	vF2
				+	vF3
				)
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Reduce
		)	(	__m256
					i_vSource
			)
			noexcept
		->	float
		{
			struct M128_2 { __m128 f[2]; };
			auto [vLeft, vRight] = ::std::bit_cast<M128_2>(i_vSource).f;
			return
			Reduce
			(	Add
				(	vLeft
				,	vRight
				)
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Reduce
		)	(	__m512
					i_vSource
			)
			noexcept
		->	float
		{
			struct M256_2 { __m256 f[2]; };
			auto [vLeft, vRight] = ::std::bit_cast<M256_2>(i_vSource).f;
			return
			Reduce
			(	Add
				(	vLeft
				,	vRight
				)
			);
		}
	};
}
