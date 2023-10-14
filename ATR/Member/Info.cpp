export module ATR.Member.Info;

import Meta.Memory.Size.Compare;
import Meta.Memory.Size;
import Meta.Token.TypeID;

using ::Meta::BitSize;
using ::Meta::TypeID;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	struct
		Info
	{
		TypeID
			Type
		;
		BitSize
			Offset
		;

		[[nodiscard]]
		auto constexpr inline
		(	IsValid
		)	()	const
			noexcept
		->	bool
		{	return
				Offset
			>=	0_bit
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	Info const
				&
			,	Info const
				&
			)
			noexcept
		->	bool
		=	default;
	};
}
