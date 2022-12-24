export module Meta.Bit.ByteSize;

import Meta.Bit.Count;
import Meta.Size;
import Std;

export namespace
	Meta::Bit
{
	Bits constexpr inline
		ByteSize
	{	::std::numeric_limits
		<	::std::underlying_type_t
			<	::std::byte
			>
		>
	::	digits
	};
}
