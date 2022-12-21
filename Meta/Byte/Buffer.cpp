export module Meta.Byte.Buffer;

import Meta.Size;
import Std;

export namespace
	Meta::Byte
{
	template
		<	USize
				t_nSize
		>
	using
		Buffer
	=	::std::array
		<	::std::byte
		,	t_nSize
		>
	;

	template
		<	typename
				t_tEntity
		>
	using
		BufferFor
	=	Buffer
		<	sizeof(t_tEntity)
		>
	;
}
