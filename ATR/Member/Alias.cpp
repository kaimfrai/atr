export module ATR.Member.Alias;

import ATR.Member.Constants;
import ATR.Member.CountedBuffer;

import Meta.String.StringChain;

import Std;

using ::Meta::StringChain;

export namespace
	ATR::Member
{
	struct
		Alias
	{
		StringChain
			Name
		;
		StringChain
			Target
		;

		[[nodiscard]]
		auto friend constexpr
		(	operator<=>
		)	(	Alias const
				&	i_rAlias
			,	StringChain
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

	using
		AliasBuffer
	=	CountedBuffer
		<	Alias
		,	NameBufferSize
		>
	;

	using
		AliasConstView
	=	AliasBuffer const
		&
	;
}
