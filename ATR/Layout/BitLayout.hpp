export module ATR:Layout.BitLayout;

import :ID;

import Std;

using ::ATR::ProtoID;
using ::Meta::BitsPerByte;
using ::Meta::USize;

export namespace
	ATR
{
	template
		<	typename
			...	t_tpBitView
		>
	struct
		BitLayout
	:	t_tpBitView
		...
	{
		using t_tpBitView::View...;
		using t_tpBitView::ConstView...;
		using t_tpBitView::Move...;
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

		static auto constexpr
			BufferSize
		=	(BitCount + (BitsPerByte - 1uz))
		/	 BitsPerByte
		;

		// must be mutable in case one bitfield is mutable
		mutable ::std::byte
			Buffer
			[	BufferSize
			]
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
			View
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
			ConstView
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
			Move
			(	i_vMemberID
			,	+Buffer
			);
		}
	};
}
