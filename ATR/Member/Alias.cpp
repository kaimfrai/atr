export module ATR.Member.Alias;

import ATR.Member.Constants;
import ATR.Member.Name;

import ATR.Member.Info;

import Std;

export namespace
	ATR::Member
{
	struct
		Alias
	{
		::ATR::Member::Name
			Name
		;
		union
		{	::ATR::Member::Name
				Target
			;
			Info
				Info
			;
		};
	};

	using
		AliasBuffer
	=	::std::array
		<	Alias
		,	NamedInfoBufferSize
		>
	;

	struct
		AliasView
	:	::std::span
		<	Alias
		>
	{
		using
			::std::span
			<	Alias
			>
		::	span
		;
	};

	struct
		ConstAliasView
	:	::std::span
		<	Alias const
		>
	{
		using
			::std::span
			<	Alias const
			>
		::	span
		;
	};
}
