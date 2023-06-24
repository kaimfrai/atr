export module ATR.Member.Constants;

import Meta.Memory.Constraint;

using ::Meta::Memory::BitAlign_Of;
using ::Meta::Memory::ByteAlign;

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
		AlignmentCount
	=	(	MaxAlign
			.	Value
		-	ByteAlign
			.	Value
		)
	+	1z
	;

	auto constexpr inline
		TypeBufferSize
	=	4z
	;

	auto constexpr inline
		NameBufferSize
	=	32z
	;
}
