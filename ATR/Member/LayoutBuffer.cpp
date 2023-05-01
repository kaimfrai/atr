export module ATR.Member.LayoutBuffer;

import ATR.Member.AlignBuffer;
import ATR.Member.Constants;

import Meta.Token.Type.Compare;
import Meta.Token.TypeID;

using ::Meta::TypeID;

export namespace
	ATR::Member
{
	using
		LayoutBuffer
	=	AlignBuffer
		<	TypeID
		>
	;
}
