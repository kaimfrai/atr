export module Meta.Bit.ByteSize;

import Meta.Size;
import Std;

export namespace
	Meta::Bit
{
	USize constexpr inline
		ByteSize
	=	::std::numeric_limits
		<	char8_t
		>
	::	digits
	;
}
