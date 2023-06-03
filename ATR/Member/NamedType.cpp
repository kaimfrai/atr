export module ATR.Member.NamedType;

import ATR.Member.AlignBuffer;

import Meta.String.Chain;
import Meta.Token.TypeID;

import Std;

using ::Meta::String::Chain;
using ::Meta::TypeID;

export namespace
	ATR::Member
{
	struct
		NamedType
	{
		Chain
			Name
		{};

		TypeID
			Type
		{};

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<=>
		)	(	NamedType const
				&	i_rNamedType
			,	Chain
					i_rName
			)
			noexcept
		->	::std::strong_ordering
		{	return
				i_rNamedType
				.	Name
			<=>	i_rName
			;
		}
	};
}
