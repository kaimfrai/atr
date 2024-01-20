export module Meta.Bit.Mask;

import Meta.Arithmetic.Integer;
import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;

export namespace
	Meta::Bit
{
	template
		<	BitSize
				t_vWidth
		>
	auto constexpr inline
		Mask
	=	static_cast
		<	UInt
			<	t_vWidth
			>
		>(	compl
			UIntMax
			{}
		>>	(	Memory::SizeOf
				<	UIntMax
				>
			-	t_vWidth
			)
		.	get()
		)
	;
}
