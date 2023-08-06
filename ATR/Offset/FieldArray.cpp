export module ATR.Offset.FieldArray;

import ATR.Offset.Member;

import Meta.Bit.Array;
import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Memory.Size.Cast;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Memory.Size;
import Meta.Size;

import Std;

using ::Meta::Bit::ArrayReference;
using ::Meta::Bit::ArrayConstReference;
using ::Meta::Bit::Field;
using ::Meta::BitSize;
using ::Meta::ByteIndex;
using ::Meta::USize;

export namespace
	ATR::Offset
{
	template
		<	BitSize
				t_vOffset
		,	BitSize
				t_vWidth
		,	USize
				t_vExtent
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator->*
	)	(	::std::byte
			(&	i_rObject
			)	[]
		,	Member
			<	t_vOffset
			,	Field<t_vWidth>
					[	t_vExtent
					]
			>
		)
		noexcept
	->	decltype(auto)
	{
		auto static constexpr
			vByteOffset
		=	IndexCast<ByteIndex>
			(	t_vOffset
			)
		;
		return
		ArrayReference
		<	t_vWidth
		,	t_vExtent
		,	vByteOffset.Remainder
		>{	::std::launder
			(	i_rObject
			+	vByteOffset.Quotient
			)
		};
	}

	template
		<	BitSize
				t_vOffset
		,	BitSize
				t_vWidth
		,	USize
				t_vExtent
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator->*
	)	(	::std::byte const
			(&	i_rObject
			)	[]
		,	Member
			<	t_vOffset
			,	Field<t_vWidth>
					[	t_vExtent
					]
			>
		)
		noexcept
	->	decltype(auto)
	{
		auto static constexpr
			vByteOffset
		=	IndexCast<ByteIndex>
			(	t_vOffset
			)
		;
		return
		CopyArray
		(	ArrayConstReference
			<	t_vWidth
			,	t_vExtent
			,	vByteOffset.Remainder
			>{	i_rObject
			+	vByteOffset.Quotient
			}
		);
	}
}
