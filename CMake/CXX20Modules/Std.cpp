module;

#include <immintrin.h>

export module Std;

export import <std.hpp>;

export
{
	using ::__m256i;
	using ::__m256;
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
				t_tSource
		>
	struct
		SimdOp
	{};

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
		(	Convert
		)	(	__m256i
					i_vSource
			,	SimdTargetTag256<float>
					i_vTarget
			)
			noexcept
		->	__m256
		{	// TODO use _mm256_cvtepu32_ps in avx512
			return
			SimdOp<::std::int32_t>
			::	Convert
				(	i_vSource
				,	i_vTarget
				)
			;
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
		(	Blend
		)	(	__m256
					i_vLeft
			,	__m256
					i_vRight
			,	__m256
					i_vMask
			)
			noexcept
		->	__m256
		{	return
			_mm256_blendv_ps
			(	i_vLeft
			,	i_vRight
			,	i_vMask
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Permute
		)	(	__m256
					i_vSource
			,	__m256i
					i_vOffsets
			)
			noexcept
		->	__m256
		{	return
			_mm256_permutevar8x32_ps
			(	i_vSource
			,	i_vOffsets
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

		template
			<	::std::size_t
					t_vAlign
			>
		[[nodiscard]]
		auto static constexpr inline
		(	Load
		)	(	float const
				*	i_aData
			,	SimdTargetTag256<float>
			,	::std::ptrdiff_t
					i_vOffset
				=	0z
			)
			noexcept
		->	__m256
		{
			float const
			*	aAlignedData
			=	::std::assume_aligned<t_vAlign>
				(	i_aData
				)
			+	(	i_vOffset
				*	static_cast<::std::ptrdiff_t>
					(	sizeof(__m256)
					/	sizeof(float)
					)
				)
			;

			if	constexpr
				(	t_vAlign
				>=	alignof(__m256)
				)
			{	return
				_mm256_load_ps
				(	aAlignedData
				);
			}
			else
			{	return
				_mm256_loadu_ps
				(	aAlignedData
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
		)	(	float const
				*	i_aData
			,	__m256
					i_vMask
			,	::std::ptrdiff_t
					i_vOffset
				=	0z
			)
			noexcept
		->	__m256
		{
			float const
			*	aAlignedData
			=	::std::assume_aligned<t_vAlign>
				(	i_aData
				)
			+	(	i_vOffset
				*	static_cast<::std::ptrdiff_t>
					(	sizeof(__m256)
					/	sizeof(float)
					)
				)
			;
			return
			_mm256_maskload_ps
			(	aAlignedData
			,	i_vMask
			);
		}

		template
			<	::std::size_t
					t_vAlign
			>
		auto static constexpr inline
		(	Store
		)	(	float
				*	o_aData
			,	__m256
					i_vSource
			,	::std::ptrdiff_t
					i_vOffset
				=	0z
			)
			noexcept
		->	void
		{
			float
			*	aAlignedData
			=	::std::assume_aligned<t_vAlign>
				(	o_aData
				)
			+	(	i_vOffset
				*	static_cast<::std::ptrdiff_t>
					(	sizeof(__m256)
					/	sizeof(float)
					)
				)
			;

			if	constexpr
				(	t_vAlign
				>=	alignof(__m256)
				)
			{	return
				_mm256_store_ps
				(	aAlignedData
				,	i_vSource
				);
			}
			else
			{	return
				_mm256_storeu_ps
				(	aAlignedData
				,	i_vSource
				);
			}
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Reduce
		)	(	__m256
					i_vSource
			)
			noexcept
		->	float
		{	return
				i_vSource[0]
			+	i_vSource[1]
			+	i_vSource[2]
			+	i_vSource[3]
			+	i_vSource[4]
			+	i_vSource[5]
			+	i_vSource[6]
			+	i_vSource[7]
			;
		}
	};
}
