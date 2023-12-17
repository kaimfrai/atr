export module Evaluation.SOAReplication.View32;

import Std;

export namespace
	Bodies3D
{
	struct
		View32
	{
		::std::experimental::native_simd<float>
		*	m_aBuffer
		;
		::std::uint32_t
			m_vCapacity
		;
		::std::uint32_t
			m_vIndex
		;

		[[nodiscard]]
		auto inline
		(	operator[]
		)	(	::std::ptrdiff_t
					i_vMember
			)	const
			noexcept
		->	::std::experimental::native_simd<float>
		{
			auto const
				vSimdSize
			=	static_cast<::std::ptrdiff_t>
				(	::std::experimental::native_simd<float>::size()
				)
			;

			auto const
				aSimd
			=	m_aBuffer
			+	m_vCapacity
			*	i_vMember
			/	vSimdSize
			+	m_vIndex
			/	vSimdSize
			;
			return
			*	aSimd
			;
		}

		auto constexpr inline
		(	operator[]
		)	(	::std::ptrdiff_t
					i_vMember
			,	float
					i_vValue
			)
			noexcept
		->	View32&
		{
			auto const
				vSimdSize
			=	static_cast<::std::ptrdiff_t>
				(	::std::experimental::native_simd<float>::size()
				)
			;

			auto const
				aSimd
			=	m_aBuffer
			+	m_vCapacity
			*	i_vMember
			/	vSimdSize
			+	m_vIndex
			/	vSimdSize
			;

			(*	aSimd)
			[	m_vIndex
			%	vSimdSize
			]=	i_vValue
			;

			return
			*	this
			;
		}
	};
}
