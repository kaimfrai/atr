export module ATR.Member.Constants;

import Meta.Memory.Constraint;

using ::Meta::Memory::BitAlign_Of;

export namespace
	ATR::Member
{
	auto constexpr
		MaxAlign
	=	BitAlign_Of
		<	double
		>
	;

	auto constexpr
		TypeBufferSize
	=	16uz
	;

	auto constexpr
		NameBufferSize
	=	16uz
	;
}
