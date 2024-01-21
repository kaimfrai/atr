export module Evaluation.SOAReplication.View32;

export import Std;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tElement
		>
	struct
		View32Base
	{
		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	this auto
					i_rView32
			,	::std::ptrdiff_t
					i_vMember
			)
			noexcept
		->	::std::experimental::fixed_size_simd<t_tElement, sizeof(::std::uint64_t)>
		{
			auto static constexpr
				vSimdSize
			=	static_cast<::std::ptrdiff_t>
				(	::std::experimental::fixed_size_simd<t_tElement, sizeof(::std::uint64_t)>
					::	size
						()
				)
			;

			auto const
				aSimd
			=	i_rView32
				.	m_aBuffer
			+	i_rView32
				.	m_vCapacity
			*	i_vMember
			/	vSimdSize
			+	i_rView32
				.	m_vIndex
			/	vSimdSize
			;
			return
			*	aSimd
			;
		}
	};

	template
		<	typename
				t_tElement
		>
	struct
		View32
	:	View32Base
		<	t_tElement
		>
	{
		::std::experimental::fixed_size_simd<t_tElement, sizeof(::std::uint64_t)>
		*	m_aBuffer
		;
		::std::uint32_t
			m_vCapacity
		;
		::std::uint32_t
			m_vIndex
		;

		auto constexpr inline
		(	operator[]
		)	(	::std::ptrdiff_t
					i_vMember
			,	t_tElement
					i_vValue
			)
			noexcept
		->	View32&
		{
			auto static constexpr
				vSimdSize
			=	static_cast<::std::ptrdiff_t>
				(	::std::experimental::fixed_size_simd<t_tElement, sizeof(::std::uint64_t)>
					::	size
						()
				)
			;

			auto
			&	rSimd
			=	*
				(	m_aBuffer
				+	m_vCapacity
				*	i_vMember
				/	vSimdSize
				+	m_vIndex
				/	vSimdSize
				)
			;

			rSimd
			[		m_vIndex
				%	vSimdSize
			]=	i_vValue
			;

			return
			*	this
			;
		}

		auto constexpr inline
		(	operator[]
		)	(	::std::ptrdiff_t
					i_vMember
			,	::std::experimental::fixed_size_simd<t_tElement, sizeof(::std::uint64_t)>
					i_vValue
			)
			noexcept
		->	View32&
		{
			auto static constexpr
				vSimdSize
			=	static_cast<::std::ptrdiff_t>
				(	::std::experimental::fixed_size_simd<t_tElement, sizeof(::std::uint64_t)>
					::	size
						()
				)
			;

			auto
			&	rSimd
			=	*
				(	m_aBuffer
				+	m_vCapacity
				*	i_vMember
				/	vSimdSize
				+	m_vIndex
				/	vSimdSize
				)
			;

			rSimd
			=	i_vValue
			;

			return
			*	this
			;
		}
	};

	template
		<	typename
				t_tElement
		>
	struct
		View32
		<	t_tElement const
		>
	:	View32Base
		<	t_tElement
		>
	{
		::std::experimental::fixed_size_simd<t_tElement, sizeof(::std::uint64_t)> const
		*	m_aBuffer
		;
		::std::uint32_t
			m_vCapacity
		;
		::std::uint32_t
			m_vIndex
		;
	};
}
