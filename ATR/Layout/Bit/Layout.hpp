export module ATR:Layout.Bit.Layout;

import :ID;

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
		using t_tpBitView::Ref...;
		using t_tpBitView::Const...;
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
			Ref
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
			Const
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
