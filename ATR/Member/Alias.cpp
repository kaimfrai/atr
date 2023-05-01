export module ATR.Member.Alias;

import ATR.Member.Constants;
import ATR.Member.Name;
import ATR.Member.CountedBuffer;

export namespace
	ATR::Member
{
	struct
		Alias
	{
		::ATR::Member::Name
			Name
		;
		::ATR::Member::Name
			Target
		;
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
	=	AliasBuffer
		::	ConstViewType
	;
}
