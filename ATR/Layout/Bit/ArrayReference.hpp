export module ATR:Layout.Bit.ArrayReference;

import :Layout.Bit.Access;
import :Layout.Bit.ElementReference;
import :Layout.Bit.Iterator;

import Meta.Arithmetic;
import Meta.Token;

import Std;

using ::Meta::IndexToken;
using ::Meta::Sequence;
using ::Meta::USize;

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

		static EOffset constexpr
			MaximumOffset
		{	[]
			<	USize
				...	t_npIndex
			>	(	IndexToken<t_npIndex...>
				)
			{	return
				::std::max
				({	(	(	static_cast<USize>(t_nSize)
						*	t_npIndex
						)
					%	BitsPerByte
					)
					...
				});
			}(	// include offset of one-past-the-end for end() iterator value
				Sequence<t_nCount + 1uz>
			)
		};
		using BitAccess = Access<t_nSize, MaximumOffset>;
		using MaskType = typename BitAccess::BufferFieldType;

		static auto constexpr
			ZeroOffsetMask
		=	SetOneBits
			(	static_cast<USize>(t_nSize)
			)
		;

		using reference = ElementReference<t_nSize, MaximumOffset>;
		using difference_type = SSize;
		using value_type = typename BitAccess::FieldType;
		using iterator = Iterator<t_nSize, MaximumOffset>;

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
			,	static_cast<MaskType>(ZeroOffsetMask << vBitOffset)
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
