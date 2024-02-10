export module Evaluation.SOAReplication.SOAView;

import Meta.Auto.Simd.Tag;

import Std;

using ::Meta::Simd;

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
		->	t_tpMember...[t_vIndex]*
		{	return
			reinterpret_cast<t_tpMember...[t_vIndex]*>
			(	i_rView
				.	m_aBuffer
			+	(	i_rView
					.	m_vCapacity
				*	MemberOffset
					[	t_vIndex
					]
				)
			+	(	i_rView
					.	m_vIndex
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
		->	Simd<::std::remove_cv_t<t_tpMember...[t_vIndex]>[t_vCount]>
		{
			Simd<t_tpMember...[t_vIndex](&)[t_vCount]> const
				vReference
			{	i_rView
				.	template
					AsPointer<t_vIndex>
					()
			};

			return
			static_cast<Simd<::std::remove_cv_t<t_tpMember...[t_vIndex]>[t_vCount]>>
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
