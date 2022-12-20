export module ATR:Layout.Bit.Layout;

import :Layout.Bit.Types;

import Meta.ID;
import Meta.Arithmetic.Size;
import Meta.Arithmetic;

import Std;

using ::Meta::ProtoID;
using ::Meta::BitsPerByte;
using ::Meta::USize;

export namespace
	ATR::Bit
{
	template
		<	typename
			...	t_tpBitView
		>
	struct
		Layout
	:	t_tpBitView
		...
	{
		using t_tpBitView::ReadWriteView...;
		using t_tpBitView::ReadView...;
		using t_tpBitView::Value...;
		using t_tpBitView::OffsetOf...;

		static auto constexpr
			BitCount
		=(	0uz
		+	...
		+	t_tpBitView::BitCount
		);

		// must be mutable in case one bitfield is mutable
		mutable BitFieldBuffer<ESize{BitCount}, EOffset{0}, 1uz>
			Buffer
		;

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	&
			noexcept
		->	decltype(auto)
		{	return
			ReadWriteView
			(	i_vMemberID
			,	+Buffer
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(auto)
		{	return
			ReadView
			(	i_vMemberID
			,	+Buffer
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	&&
			noexcept
		->	decltype(auto)
		{	return
			Value
			(	i_vMemberID
			,	+Buffer
			);
		}
	};
}
