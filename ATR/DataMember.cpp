export module ATR.DataMember;

import Meta.Token.Type;
import Meta.Token.Type.Compare;
import Meta.ID.StringView;
import Meta.Size;

import Std;

using ::Meta::StringView;
using ::Meta::TypeID;
using ::Meta::USize;

export namespace
	ATR
{
	struct
		MemberInfo final
	{
		USize SortKey;
		StringView Name;
		TypeID Type;

		[[nodiscard]]
		friend auto constexpr
		(	operator <=>
		)	(	MemberInfo const&
			,	MemberInfo const&
			)
			noexcept
		=	default;
	};
}
