export module ATR:Layout.BitReference;

import :Layout.BitAccess;

import Std;

export namespace
	ATR
{
	template
		<	EBitFieldSize
				t_nSize
		,	EBitFieldOffset
				t_nOffset
		>
	struct
		BitReference final
	{
		using BitAccess = ::ATR::BitAccess<t_nSize, t_nOffset>;
		using FieldType = typename BitAccess::FieldType;

		::std::byte
		*	m_aUnderlyingArray
		;

		[[nodiscard]]
		explicit(false) constexpr
		(	operator FieldType
		)	()	const
		{	return
			BitAccess::ReadField
			(	m_aUnderlyingArray
			);
		}

		auto constexpr
		(	operator =
		)	(	FieldType
					i_vValue
			)	&
		->	BitReference&
		{
			BitAccess::WriteField(i_vValue, m_aUnderlyingArray);
			return *this;
		}

		auto constexpr
		(	operator =
		)	(	FieldType
					i_vValue
			)	&&
		->	BitReference&&
		{
			return
			::std::move
			(	*this
			=	i_vValue
			);
		}
	};
}
