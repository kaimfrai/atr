export module Meta.Byte.BitCount;

import Meta.Size;
import Std;

export namespace
	Meta::Byte
{
	USize constexpr inline
		BitCount
	=	::std::numeric_limits
		<	char8_t
		>
	::	digits
	;
}
