export module Meta.Bit.Mask;

import Meta.Arithmetic.Integer;
import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;

export namespace
	Meta::Bit
{
	template
		<	BitSize
				t_nWidth
		>
	auto constexpr inline
		Mask
	=	static_cast
		<	UInt
			<	t_nWidth
			>
		>(	compl
			UIntMax
			{}
		>>	(	Memory::SizeOf
				<	UIntMax
				>
			-	t_nWidth
			)
		.	get()
		)
	;
}
