export module ATR:Layout.Bit.Reference;

import :Layout.Bit.Access;

import Std;

export namespace
	ATR::Bit
{
	template
		<	ESize
				t_nSize
		,	EOffset
				t_nOffset
		>
	struct
		Reference final
	{
		static_assert
		(	static_cast<USize>(t_nOffset)
		<	BitsPerByte
		,	"Bit::Reference not properly aligned! Expected maximum offset below Bits per Byte!"
		);

		using BitAccess = ::ATR::Bit::Access<t_nSize, t_nOffset>;
		using FieldType = typename BitAccess::FieldType;

		::std::byte
		*	const
			m_aUnderlyingArray
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
		->	Reference&
		{
			BitAccess::WriteField(i_vValue, m_aUnderlyingArray);
			return *this;
		}

		auto constexpr
		(	operator =
		)	(	FieldType
					i_vValue
			)	&&
		->	Reference&&
		{
			return
			::std::move
			(	*this
			=	i_vValue
			);
		}
	};
}
