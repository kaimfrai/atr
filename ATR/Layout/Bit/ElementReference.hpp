export module ATR:Layout.Bit.ElementReference;

import :Layout.Bit.Access;

import Std;

export namespace
	ATR::Bit
{
	template
		<	ESize
				t_nSize
		,	EOffset
				t_nMaxOffset
		>
	struct
		ElementReference final
	{
		static_assert
		(	static_cast<USize>(t_nMaxOffset)
		<	BitsPerByte
		,	"Bit::ElementReference not properly aligned! Expected maximum offset below Bits per Byte!"
		);

		using BitAccess = ::ATR::Bit::Access<t_nSize, t_nMaxOffset>;
		using FieldType = typename BitAccess::FieldType;

		//	do not implicitly convert to bool on assignment
		//	e.g. 2 converts to true but false is expected as the first bit is 0
		using AssignType = UInt<static_cast<USize>(t_nSize)>;
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
		)	(	AssignType
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
		)	(	AssignType
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

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	ElementReference
					i_vLeft
			,	FieldType
					i_vRight
			)
		->	bool
		{	return
				i_vLeft.operator FieldType()
			==	i_vRight
			;
		}
	};

	//	catch dangerous implicit conversion from UInt8 to bool
	template
		<	EOffset
				t_nMaxOffset
		>
	auto constexpr
	(	operator==
	)	(	ElementReference
			<	ESize{1}
			,	t_nMaxOffset
			>
		,	UInt<1uz>
		)
	=	delete;
}
