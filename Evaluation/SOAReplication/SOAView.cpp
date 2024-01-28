export module Evaluation.SOAReplication.SOAView;

export import Std;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tMember
		>
	using
		Simd
	=	::std::experimental::native_simd
		<	t_tMember
		>
	;
	template
		<	typename
				t_tMember
		,	::std::size_t
				t_vSize
		>
	using
		FixedSimd
	=	::std::experimental::fixed_size_simd
		<	t_tMember
		,	t_vSize
		>
	;
	template
		<	typename
				t_tMember
		>
	using
		SimdMask
	=	::std::experimental::native_simd_mask
		<	t_tMember
		>
	;
	template
		<	typename
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
			,	typename
					t_tElement
			>
		[[nodiscard]]
		auto constexpr inline
		(	AsPointer
		)	(	this auto
					i_rView
			)
			noexcept
		->	t_tElement*
		{	return
			reinterpret_cast<t_tElement*>
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
			,	typename
					t_tElement
			,	::std::size_t
					t_vCount
				=	Simd<t_tElement>
					::	size
						()
			>
		[[nodiscard]]
		auto constexpr inline
		(	get
		)	(	this auto
					i_rView
			)
			noexcept
		{
			if	constexpr
				(	t_vCount
				==	Simd<t_tElement>
					::	size
						()
				)
			{	return
				Simd<t_tElement>
				{	i_rView
					.	template
						AsPointer<t_vIndex, t_tElement const>
						()
				,	::std::experimental::vector_aligned
				};
			}
			else
			{	return
				FixedSimd<t_tElement, t_vCount>
				{	i_rView
					.	template
						AsPointer<t_vIndex, t_tElement const>
						()
				,	::std::experimental::vector_aligned
				};
			}
		}
	};

	template
		<	typename
			...	t_tpMember
		>
	struct
		SOAView
	:	SOAViewBase
		<	t_tpMember
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
			,	typename
					t_tElement
			>
		auto constexpr inline
		(	set
		)	(	Simd<t_tElement>
					i_vValue
			)	const
			noexcept
		->	SOAView const&
		{
			i_vValue
			.	copy_to
				(	this
					->	template
						AsPointer<t_vIndex, t_tElement>
						()
				,	::std::experimental::vector_aligned
				)
			;

			return
			*	this
			;
		}

		template
			<	::std::size_t
					t_vIndex
			,	typename
					t_tElement
			,	auto
					t_vSize
			>
		auto constexpr inline
		(	set
		)	(	FixedSimd<t_tElement, t_vSize>
					i_vValue
			)	const
			noexcept
		->	SOAView const&
		{
			i_vValue
			.	copy_to
				(	this
					->	template
						AsPointer<t_vIndex, t_tElement>
						()
				,	::std::experimental::vector_aligned
				)
			;

			return
			*	this
			;
		}
	};

	template
		<	typename
			...	t_tpMember
		>
	struct
		SOAView
		<	t_tpMember const
			...
		>
	:	SOAViewBase
		<	t_tpMember
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
		<	//	ColorRed
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
			unsigned char
		>
	;

	using
		Body3DConstView
	=	SOAView
		<	//	ColorRed
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
			unsigned char const
		>
	;
}
