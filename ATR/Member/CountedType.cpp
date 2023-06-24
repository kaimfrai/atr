export module ATR.Member.CountedType;

import Meta.Size;
import Meta.Token.TypeID;

using ::Meta::SSize;
using ::Meta::TypeID;

export namespace
	ATR::Member
{
	struct
		CountedType
	{
		TypeID
			Type
		{};

		SSize
			Count
		{};

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	CountedType const
				&
			,	CountedType const
				&
			)
			noexcept
		->	bool
		=	default;
	};
}
