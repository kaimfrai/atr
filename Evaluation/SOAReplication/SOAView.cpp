export module Evaluation.SOAReplication.SOAView;

import Meta.Auto.Simd.Fill;
import Meta.Auto.Simd.Tag;

import Std;

using ::Meta::MaskedSimd;
using ::Meta::Simd;
using ::Meta::SimdFill;
using ::Meta::SimdMask;

export namespace
	Bodies3D
{
	template
		<	::std::size_t
				t_vCount
		,	typename
			...	t_tpMember
		>
	struct
		SOAViewBase
	{
		template
			<	::std::size_t
					t_vIndex
			>
		using
			Val
		=	::std::remove_cv_t
			<	t_tpMember
				...	[	t_vIndex
					]
			>	[	t_vCount
				]
		;

		template
			<	::std::size_t
					t_vIndex
			>
		using
			Ptr
		=	t_tpMember
			...	[	t_vIndex
				]
			*
		;

		template
			<	::std::size_t
					t_vIndex
			>
		using
			Ref
		=	t_tpMember
			...	[	t_vIndex
				]
			(&)	[	t_vCount
				]
		;

		auto static constexpr inline
			Alignment
		=	t_vCount
		*	::std::max
			({	alignof(t_tpMember)
				...
			})
		;

		[[nodiscard]]
		auto static constexpr inline
		(	CeilToBlockCapacity
		)	(	::std::uint32_t
					i_vCapacity
			)
			noexcept
		->	::std::uint32_t
		{
			auto const
				vAlignment
			=	static_cast<::std::uint32_t>
				(	Alignment
				)
			;
			auto const
				vRemainder
			=	i_vCapacity
			%	vAlignment
			;
			return
				i_vCapacity
			+	(	(	vRemainder
					>	0u
					)
				*	(	vAlignment
					-	vRemainder
					)
				)
			;
		}

		auto static constexpr inline
			MemberSize
		=	::std::array<::std::ptrdiff_t, sizeof...(t_tpMember)>
			{	sizeof(t_tpMember)
				...
			}
		;

		auto static constexpr inline
			MemberOffset
		=	[]{	::std::array<::std::ptrdiff_t, sizeof...(t_tpMember)>
					vOffsets
				{};

				::std::exclusive_scan
				(	MemberSize
					.	begin
						()
				,	MemberSize
					.	end
						()
				,	vOffsets
					.	begin
						()
				,	0z
				);

				return
					vOffsets
				;
			}()
		;

		auto static constexpr inline
			TotalSize
		=	(	0uz
			+	...
			+	sizeof(t_tpMember)
			)
		;

		template
			<	::std::size_t
					t_vIndex
			>
		[[nodiscard]]
		auto constexpr inline
		(	AsPointer
		)	(	this auto
					i_rView
			)
			noexcept
		->	Ptr<t_vIndex>
		{
			auto const
				vIndex
			=	i_rView
				.	m_vIndex
			;
			auto const
				vCapacity
			=	i_rView
				.	m_vCapacity
			;
			auto const
				aBuffer
			=	::std::assume_aligned<Alignment>
				(	i_rView
					.	m_aBuffer
				)
			;

			return
			reinterpret_cast<Ptr<t_vIndex>>
			(	aBuffer
			+	(	vCapacity
				*	MemberOffset
					[	t_vIndex
					]
				)
			+	(	vIndex
				*	MemberSize
					[	t_vIndex
					]
				)
			);
		}

		template
			<	::std::size_t
					t_vIndex
			>
		[[nodiscard]]
		auto constexpr inline
		(	get
		)	(	this auto
					i_rView
			)
			noexcept
		->	Simd<Val<t_vIndex>>
		{
			Simd<Ref<t_vIndex>> const
				vReference
			{	i_rView
				.	template
					AsPointer<t_vIndex>
					()
			};

			return
			static_cast<Simd<Val<t_vIndex>>>
			(	vReference
			);
		}

		template
			<	::std::size_t
					t_vIndex
			>
		[[nodiscard]]
		auto constexpr inline
		(	get
		)	(	this auto
					i_rView
			,	SimdMask<Val<t_vIndex>>
					i_vMask
			)
			noexcept
		->	MaskedSimd<Val<t_vIndex>>
		{
			MaskedSimd<Ref<t_vIndex>> const
				vReference
			{	i_rView
				.	template
					AsPointer<t_vIndex>
					()
			,	i_vMask
				.	m_vRaw
			};

			return
			static_cast<MaskedSimd<Val<t_vIndex>>>
			(	vReference
			);
		}
	};

	template
		<	::std::size_t
				t_vCount
		,	typename
			...	t_tpMember
		>
	struct
		SOAView
	:	SOAViewBase
		<	t_vCount
		,	t_tpMember
			...
		>
	{
		::std::byte
		*	m_aBuffer
		;
		::std::uint32_t
			m_vCapacity
		;
		::std::uint32_t
			m_vIndex
		;

		template
			<	::std::size_t
					t_vIndex
			>
		auto constexpr inline
		(	set
		)	(	Simd<t_tpMember...[t_vIndex][t_vCount]>
					i_vValue
			)	const
			noexcept
		->	SOAView const&
		{
			Simd<t_tpMember...[t_vIndex](&)[t_vCount]> const
				vReference
			{	this
				->	template
					AsPointer<t_vIndex>
					()
			};

				vReference
			=	i_vValue
			;

			return
			*	this
			;
		}
	};

	template
		<	::std::size_t
				t_vCount
		,	typename
			...	t_tpMember
		>
	struct
		SOAView
		<	t_vCount
		,	t_tpMember const
			...
		>
	:	SOAViewBase
		<	t_vCount
		,	t_tpMember const
			...
		>
	{
		::std::byte const
		*	m_aBuffer
		;
		::std::uint32_t
			m_vCapacity
		;
		::std::uint32_t
			m_vIndex
		;
	};

	using
		Body3DView
	=	SOAView
		<	8uz
		,	//	ColorRed
			float
		,	//	ColorGreen
			float
		,	//	ColorBlue
			float
		,	//	Color Alpha
			float
		,	//	PointLateral
			float
		,	//	PointLongitudinal
			float
		,	//	PointVertical
			float
		,	//	Height
			float
		,	//	Width
			float
		,	//	Depth
			float
		,	// Type Index
			::std::uint8_t
		>
	;

	using
		Body3DConstView
	=	SOAView
		<	8uz
		,	//	ColorRed
			float const
		,	//	ColorGreen
			float const
		,	//	ColorBlue
			float const
		,	//	Color Alpha
			float const
		,	//	PointLateral
			float const
		,	//	PointLongitudinal
			float const
		,	//	PointVertical
			float const
		,	//	Height
			float const
		,	//	Width
			float const
		,	//	Depth
			float const
		,	// Type Index
			::std::uint8_t const
		>
	;
}
