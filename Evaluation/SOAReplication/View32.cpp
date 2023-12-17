export module Evaluation.SOAReplication.View32;

import Std;

export namespace
	Bodies3D
{
	struct
		View32
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

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	::std::ptrdiff_t
					i_vMember
			)	const
			noexcept
		->	float
		{	return
			*	::std::launder
				(	::std::bit_cast<float const*>
					(	::std::assume_aligned
						<	alignof(float)
						>(	m_aBuffer
						)
					+	(	m_vCapacity
						*	i_vMember
						+	m_vIndex
						)
					*	static_cast<::std::ptrdiff_t>
						(	sizeof(float)
						)
					)
				)
			;
		}

		template
			<	typename
					t_tValue
			>
		requires
			(	sizeof(t_tValue)
			==	4
			)
		auto constexpr inline
		(	operator[]
		)	(	::std::ptrdiff_t
					i_vMember
			,	t_tValue
					i_vValue
			)
			noexcept
		->	View32&
		{
			::std::construct_at
			(	::std::bit_cast<t_tValue*>
				(	::std::assume_aligned
					<	alignof(t_tValue)
					>(	m_aBuffer
					)
				+	(	m_vCapacity
					*	i_vMember
					+	m_vIndex
					)
				*	static_cast<::std::ptrdiff_t>
					(	sizeof(t_tValue)
					)
				)
			,	i_vValue
			);

			return
			*	this
			;
		}
	};
}
