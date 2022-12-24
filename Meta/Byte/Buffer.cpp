export module Meta.Byte.Buffer;

import Meta.Byte.Count;
import Std;

export namespace
	Meta::Byte
{
	template
		<	Bytes
				t_nSize
		>
	using
		Buffer
	=	::std::array
		<	::std::byte
		,	t_nSize.get()
		>
	;

	template
		<	typename
				t_tEntity
		>
	using
		BufferFor
	=	Buffer
		<	Bytes
			{	sizeof(t_tEntity)
			}
		>
	;
}
