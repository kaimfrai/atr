export module Meta.Memory.Alignment;

import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Compare;

import Std;

export namespace
	Meta::Memory
{
	struct
		Alignment
	{
		BitSize
			Value
		;

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	Alignment
					i_vLeft
			,	Alignment
					i_vRight
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		friend auto constexpr
		(	operator <=>
		)	(	Alignment
					i_vLeft
			,	Alignment
					i_vRight
			)
			noexcept
		->	::std::strong_ordering
		=	default;
	};
}

export namespace
	Meta::inline Literals
{
	[[nodiscard]]
	auto constexpr
	(	operator""_align
	)	(	unsigned long long
				i_nBits
		)
		noexcept
	->	Memory::Alignment
	{	return
		{	static_cast<BitSize::SizeType>
			(	i_nBits
			)
		};
	}
}
