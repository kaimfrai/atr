export module ATR.Member.Info;

import Meta.Token.Type;
import Meta.Token.Type.Compare;
import Meta.ID.StringView;
import Meta.Size;

import Std;

using ::Meta::StringView;
using ::Meta::TypeID;
using ::Meta::USize;

export namespace
	ATR::Member
{
	struct
		Info final
	{
		USize SortKey;
		StringView Name;
		TypeID Type;

		[[nodiscard]]
		friend auto constexpr
		(	operator <=>
		)	(	Info const&
			,	Info const&
			)
			noexcept
		=	default;
	};
}
