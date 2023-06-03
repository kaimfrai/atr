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
				t_nValue
		>
	using
		SInt_For
	=	SInt
		<	BitSize
			{	::std::bit_width
				(	Math::Unsigned
					(	(	t_nValue
						>=	0z
						)
					?	t_nValue
					:	compl t_nValue
					)
				)
			}
		+	1_bit
		>
	;

	template
		<	SIntMax
				t_nMaxValue
		>
	[[nodiscard]]
	auto constexpr inline
	(	Narrow
	)	(	SIntMax
				i_nValue
		)
		noexcept
	->	SInt_For<t_nMaxValue>
	{	return
		static_cast<SInt_For<t_nMaxValue>>
		(	i_nValue
		);
	}

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

	template
		<	UIntMax
				t_nMaxValue
		>
	[[nodiscard]]
	auto constexpr inline
	(	Narrow
	)	(	UIntMax
				i_nValue
		)
		noexcept
	->	UInt_For<t_nMaxValue>
	{	return
		static_cast<UInt_For<t_nMaxValue>>
		(	i_nValue
		);
	}
}
