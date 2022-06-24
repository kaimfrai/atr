export module ATR:Layout.Bit.Layout;

import :ID;
import :Layout.Bit.Types;

import Std;

using ::ATR::ProtoID;
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
		+	static_cast<USize>
			(	t_tpBitView
			::	BitSize
			)
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
