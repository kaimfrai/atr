export module Evaluation.SOAReplication.SOAView;

import Meta.Auto.Simd.Tag;

import std;

using ::Meta::Auto::Simd;

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
		=	Simd
			<	t_tpMember
				...	[	t_vIndex
					]
				(&)	[	t_vCount
					]
			>
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

		template
			<	::std::size_t
					t_vIndex
			>
		auto static constexpr inline
			MemberOffset
		=	[]{
				if constexpr
					(	t_vIndex
					==	0uz
					)
				{	return
						0uz
					;
				}
				else
				{	return
						MemberOffset
						<	t_vIndex
						-	1uz
						>
					+	sizeof(t_tpMember...[t_vIndex - 1uz])
					;
				}
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
					<	t_vIndex
					>
				)
			+	(	vIndex
				*	sizeof(t_tpMember...[t_vIndex])
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
		->	Ref<t_vIndex>
		{	return
			Ref<t_vIndex>
			{	i_rView
				.	template
					AsPointer<t_vIndex>
					()
			};
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

	template
		<	::std::size_t
				t_vCount
		>
	using
		Body3DView
	=	SOAView
		<	t_vCount
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

	template
		<	::std::size_t
				t_vCount
		>
	using
		Body3DConstView
	=	SOAView
		<	t_vCount
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
