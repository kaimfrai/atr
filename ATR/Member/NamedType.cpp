export module ATR.Member.NamedType;

import ATR.Member.AlignBuffer;
import ATR.Member.Name;

import Meta.Token.TypeID;

using ::Meta::TypeID;

export namespace
	ATR::Member
{
	struct
		NamedType
	{
		::ATR::Member::Name
			Name
		{};

		TypeID
			Type
		{};
	};

	using
		NamedTypeBuffer
	=	AlignBuffer
		<	NamedType
		>
	;

	using
		NamedTypeConstView
	=	NamedTypeBuffer
		::	ConstViewType
	;
}
