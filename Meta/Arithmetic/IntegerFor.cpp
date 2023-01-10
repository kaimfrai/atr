export module Meta.Arithmetic.IntegerFor;

import Meta.Arithmetic.Integer;
import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;

import Std;

export namespace
	Meta
{
	template
		<	SIntMax
				t_nValue
		>
	using
		SInt_For
	=	SInt
		<	BitSize
			{	::std::bit_width
				(	static_cast
					<	::std::make_unsigned_t
						<	SIntMax
						>
					>(	(	t_nValue
						>=	0z
						)
					?	t_nValue
					:	-(t_nValue + 1z)
					)
				)
			}
		+	1_bit
		>
	;

	template
		<	UIntMax
				t_nValue
		>
	using
		UInt_For
	=	UInt
		<	BitSize
			{	::std::bit_width
				(	t_nValue
				)
			}
		>
	;
}
