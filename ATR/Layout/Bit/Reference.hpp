export module ATR:Layout.Bit.Reference;

import :Layout.Bit.Access;
import :Layout.Bit.Types;

import Meta.Bit.ByteSize;

import Std;

export namespace
	ATR::Bit
{
	template
		<	typename
				t_tBuffer
		,	ESize
				t_nSize
		,	EOffset
				t_nOffset
		>
	struct
		SingleReference final
	{
		static_assert
		(	static_cast<USize>(t_nOffset)
		<	::Meta::Bit::ByteSize
		,	"Bit::Reference not properly aligned! Expected maximum offset below Bits per Byte!"
		);

		using BitAccess = ::ATR::Bit::Access<t_nSize, t_nOffset>;
		using value_type = typename BitAccess::FieldType;

		t_tBuffer
		*	const
			m_aUnderlyingArray
		;

		[[nodiscard]]
		explicit(false) constexpr
		(	operator value_type
		)	()	const
		{	return
			BitAccess::ReadField
			(	m_aUnderlyingArray
			);
		}

		auto constexpr
		(	operator =
		)	(	value_type
					i_vValue
			)	&
		->	SingleReference&
			requires
			(	not
				::std::is_const_v<t_tBuffer>
			)
		{
			BitAccess::WriteField(i_vValue, m_aUnderlyingArray);
			return *this;
		}

		auto constexpr
		(	operator =
		)	(	value_type
					i_vValue
			)	&&
		->	SingleReference&&
			requires
			(	not
				::std::is_const_v<t_tBuffer>
			)
		{
			return
			::std::move
			(	*this
			=	i_vValue
			);
		}
	};

	template
		<	ESize
				t_nSize
		,	EOffset
				t_nOffset
		>
	using
		Reference
	=	SingleReference
		<	::std::byte
		,	t_nSize
		,	t_nOffset
		>
	;
}
