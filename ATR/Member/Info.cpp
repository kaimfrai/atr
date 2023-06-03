export module ATR.Member.Info;

import Meta.Memory.Size.Compare;
import Meta.Memory.Size;
import Meta.Token.Type.Compare;
import Meta.Token.TypeID;

import Std;

using ::Meta::BitSize;
using ::Meta::TypeID;

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
		auto friend constexpr inline
		(	operator<=>
		)	(	Info const
				&
			,	Info const
				&
			)
			noexcept
		=	default;
	};
}
