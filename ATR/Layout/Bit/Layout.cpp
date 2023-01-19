export module ATR.Layout.Bit.Layout;

import Meta.ID.Concept;
import Meta.Size;
import Meta.Memory.Size;
import Meta.Byte.Buffer;
import Meta.Byte.Buffer.Range;

import Std;

using ::Meta::ProtoID;
using ::Meta::USize;

using namespace ::Meta::Literals;

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
			BitSize
		=(	0_bit
		+	...
		+	t_tpBitView::BitSize
		);

		// must be mutable in case one bitfield is mutable
		mutable ::Meta::Byte::Buffer<BitSize>
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
			,	begin(Buffer)
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
			,	begin(Buffer)
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
			,	begin(Buffer)
			);
		}
	};
}
