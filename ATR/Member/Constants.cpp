export module ATR.Member.Constants;

import Meta.Memory.Constraint;

using ::Meta::Memory::BitAlign_Of;

export namespace
	ATR::Member
{
	auto constexpr inline
		MaxAlign
	=	BitAlign_Of
		<	double
		>
	;

	auto constexpr inline
		ElementsPerAlign
	=	12uz
	;

	auto constexpr inline
		NameBufferSize
	=	16uz
	;
}
