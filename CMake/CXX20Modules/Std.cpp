export module Std;

import std;

export
{
	template
		<	typename
				t_tElement
		,	::std::size_t
				t_vVectorSize
		>
	using
		vec
		[[clang::ext_vector_type(t_vVectorSize)]]
	=	t_tElement
	;
	using __mmask8 = unsigned char;
	using __mmask16 = unsigned short;
	using __mmask32 = unsigned int;
	using __mmask64 = unsigned long long;
}
