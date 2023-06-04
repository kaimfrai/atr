export module ATR.Layout.Bit;

import Meta.Memory.Size;

import Std;

using ::Meta::ByteSize;

export namespace
	ATR::Layout
{
	template
		<	ByteSize
				t_vBytes
		>
	struct
		Bit
	{
		// Must be mutable in case one bitfield is mutable
		::std::byte mutable
			Buffer
			[	t_vBytes
				.	get
					()
			]
		;
	};
}

