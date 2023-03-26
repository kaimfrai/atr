export module ATR.Member.Layout;

import ATR.Member.Constants;

import Meta.Token.TypeID;

import Std;

using ::Meta::TypeID;

export namespace
	ATR::Member
{
	using
		LayoutBuffer
	=	::std::array
		<	TypeID
		,	LayoutBufferSize
		>
	;

	struct
		LayoutView
	:	::std::span
		<	TypeID
		>
	{
		using
			::std::span
			<	TypeID
			>
		::	span
		;
	};
}
