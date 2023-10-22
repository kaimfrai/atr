export module ATR.Member.Constants;

import Meta.Memory.Constraint;

using ::Meta::Memory::BitAlign_Of;

export namespace
	ATR::Member
{
	using ::Meta::Memory::ByteAlign;

	///	The maximum alignment that can be used for a member type
	auto constexpr inline
		MaxAlign
	=	BitAlign_Of
		<	double
		>
	;

	///	Alignments that can be expressed in bytes
	auto constexpr inline
		ByteAlignCount
	=	(	MaxAlign
			.	Value
		-	ByteAlign
			.	Value
		)
	+	1
	;

	///	Alignments that can be put into an array of bytes
	///	Includes 1, 2, 4 and std::byte itself
	auto constexpr inline
		BitAlignCount
	=	ByteAlign
		.	Value
	;

	///	How many different types with the same alignment can be used
	auto constexpr inline
		TypeBufferSize
	=	4
	;

	///	How many different names may be used at most
	auto constexpr inline
		NameBufferSize
	=	64
	;
}
