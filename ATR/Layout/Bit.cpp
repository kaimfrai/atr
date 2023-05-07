export module ATR.Layout.Bit;

import Meta.Memory.Constraint;
import Meta.Memory.Size;

import Std;

using ::Meta::ByteSize;
using ::Meta::Memory::BitSize_Of;

export namespace
	ATR::Layout
{
	template
		<	typename
			...	t_tpBit
		>
	struct
		Bit
	{
		ByteSize static constexpr
			ByteSize
		=	(	...
			+	BitSize_Of
				<	t_tpBit
				>
			)
		;

		// must be mutable in case one bitfield is mutable
		::std::byte mutable
			Buffer
			[	ByteSize
				.	get
					()
			]
		;
	};
}

