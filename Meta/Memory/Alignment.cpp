export module Meta.Memory.Alignment;

import Std;

export namespace
	Meta::Memory
{
	struct
		Alignment
	{
		// Result of std::countr_zero
		int
			Value
		;

		[[nodiscard]]
		auto friend constexpr
		(	operator==
		)	(	Alignment
					i_vLeft
			,	Alignment
					i_vRight
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		auto friend constexpr
		(	operator<=>
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
				i_nBitExponent
		)
		noexcept
	->	Memory::Alignment
	{	return
		{	static_cast<int>
			(	i_nBitExponent
			)
		};
	}
}
