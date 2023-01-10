export module ATR:Layout.Bit.ElementReference;

import :Layout.Bit.Access;

import Meta.Memory.Size;
import Meta.Bit.Index;

import Std;

using namespace ::Meta::Literals;

export namespace
	ATR::Bit
{
	template
		<	typename
				t_tBuffer
		,	::Meta::BitSize
				t_nSize
		,	::Meta::Bit::Index<1_byte>
				t_nMaxOffset
		>
	struct
		ElementReference final
	{
		using
			BitAccess
		=	::ATR::Bit::Access
			<	t_nSize
			,	t_nMaxOffset
			>
		;
		using
			FieldType
		=	typename
				BitAccess
			::	FieldType
		;

		using
			MaskType
		=	typename
				BitAccess
			::	BufferFieldType
		;

		t_tBuffer
		*	const
			m_aUnderlyingArray
		;
		MaskType const
			m_vMask
		;

		[[nodiscard]]
		explicit(false) constexpr
		(	operator FieldType
		)	()	const
			noexcept
		{	return
			BitAccess::ReadField
			(	m_aUnderlyingArray
			,	m_vMask
			);
		}

		auto constexpr
		(	operator =
		)	(	FieldType
					i_vValue
			)	&
			noexcept
		->	ElementReference&
			requires
			(	not
				::std::is_const_v<t_tBuffer>
			)
		{
			BitAccess::WriteField
			(	i_vValue
			,	m_aUnderlyingArray
			,	m_vMask
			);
			return *this;
		}

		auto constexpr
		(	operator =
		)	(	FieldType
					i_vValue
			)	&&
			noexcept
		->	ElementReference&&
			requires
			(	not
				::std::is_const_v<t_tBuffer>
			)
		{	return
			::std::move
			(	*this
			=	i_vValue
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	ElementReference
					i_vLeft
			,	FieldType
					i_vRight
			)
			noexcept
		->	bool
		{	return
				i_vLeft.operator FieldType()
			==	i_vRight
			;
		}
	};
}
