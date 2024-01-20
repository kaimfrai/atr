export module Meta.Arithmetic.IntegerFor;

import Meta.Arithmetic.Integer;
import Meta.Math.Sign;
import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;

import Std;

export namespace
	Meta::Arithmetic
{
	template
		<	SIntMax
				t_vValue
		>
	using
		SInt_For
	=	SInt
		<	BitSize
			{	::std::bit_width
				(	Math::Unsigned
					(	(	t_vValue
						>=	0z
						)
					?	t_vValue
					:	compl t_vValue
					)
				)
			}
		+	1_bit
		>
	;

	template
		<	SIntMax
				t_vMaxValue
		>
	[[nodiscard]]
	auto constexpr inline
	(	Narrow
	)	(	SIntMax
				i_vValue
		)
		noexcept
	->	SInt_For<t_vMaxValue>
	{	return
		static_cast<SInt_For<t_vMaxValue>>
		(	i_vValue
		);
	}

	template
		<	UIntMax
				t_vValue
		>
	using
		UInt_For
	=	UInt
		<	BitSize
			{	::std::bit_width
				(	t_vValue
				)
			}
		>
	;

	template
		<	UIntMax
				t_vMaxValue
		>
	[[nodiscard]]
	auto constexpr inline
	(	Narrow
	)	(	UIntMax
				i_vValue
		)
		noexcept
	->	UInt_For<t_vMaxValue>
	{	return
		static_cast<UInt_For<t_vMaxValue>>
		(	i_vValue
		);
	}
}
