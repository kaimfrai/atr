export module ATR.Member.Alias;

import ATR.Member.Constants;
import ATR.Member.CountedBuffer;

import Meta.String.Chain;

import Std;

using ::Meta::String::Chain;

export namespace
	ATR::Member
{
	struct
		Alias
	{
		Chain
			Name
		;
		Chain
			Target
		;

		[[nodiscard]]
		auto friend constexpr
		(	operator<=>
		)	(	Alias const
				&	i_rAlias
			,	Chain
					i_rName
			)
			noexcept
		->	::std::strong_ordering
		{	return
				i_rAlias
				.	Name
			<=>	i_rName
			;
		}
	};
}
