export module ATR:Layout.Bit.ArrayReference;

import :Layout.Bit.Access;
import :Layout.Bit.ElementReference;
import :Layout.Bit.Iterator;

import Meta.Arithmetic;

import Std;

// using ::Meta::USize;

export namespace
	ATR::Bit
{
	template
		<	ESize
				t_nSize
		,	USize
				t_nCount
		>
	struct
		ArrayReference final
	{
		static_assert
		(	t_nSize
		>	ESize{}
		,	"Cannot form a reference to BitFields of length 0!"
		);

		using BitAccess = Access<t_nSize>;
		using MaskType = typename BitAccess::BufferFieldType;

		static auto constexpr
			ZeroOffsetMask
		=	SetOneBits
			(	static_cast<USize>(t_nSize)
			)
		;

		using reference = ElementReference<t_nSize>;
		using difference_type = SSize;
		using value_type = typename BitAccess::FieldType;
		using iterator = Iterator<t_nSize>;

		::std::byte
		*	const
			m_aUnderlyingArray
		;

		auto constexpr
		(	IteratorAt
		)	(	USize
					i_nIndex
			)	const&
		->	iterator
		{
			if	(i_nIndex > t_nCount)
				::std::unreachable();

			auto const
				vTotalOffset
			=	i_nIndex
			*	static_cast<USize>(t_nSize)
			;

			auto const
				vByteOffset
			=	vTotalOffset
			/	BitsPerByte
			;

			auto const
				vBitOffset
			=	vTotalOffset
			%	BitsPerByte
			;

			return
			{	m_aUnderlyingArray + vByteOffset
			,	ZeroOffsetMask << vBitOffset
			};
		}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	&
		->	reference
		{	return *IteratorAt(i_nIndex);	}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	const&
		->	value_type
		{	return *IteratorAt(i_nIndex);	}

		friend auto constexpr
		(	begin
		)	(	ArrayReference
					i_vArray
			)
		->	iterator
		{	return i_vArray.IteratorAt(0z);	}

		friend auto constexpr
		(	end
		)	(	ArrayReference
					i_vArray
			)
		->	iterator
		{	return i_vArray.IteratorAt(t_nCount);	}
	};
}
