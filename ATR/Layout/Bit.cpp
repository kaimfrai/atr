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
		::std::byte
			Buffer
			[	t_vBytes
				.	get
					()
			]
		;
	};
}

