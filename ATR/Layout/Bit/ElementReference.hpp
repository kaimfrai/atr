export module ATR:Layout.Bit.ElementReference;

import :Layout.Bit.Access;

import Std;

export namespace
	ATR::Bit
{
	template
		<	ESize
				t_nSize
		>
	struct
		ElementReference final
	{
		using BitAccess = ::ATR::Bit::Access<t_nSize>;
		using FieldType = typename BitAccess::FieldType;
		using MaskType = typename BitAccess::BufferFieldType;

		::std::byte
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
		->	ElementReference&
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
		->	ElementReference&&
		{
			return
			::std::move
			(	*this
			=	i_vValue
			);
		}
	};
}
