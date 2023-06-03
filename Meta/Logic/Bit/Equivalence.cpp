export module Meta.Logic.Bit.Equivalence;

import Meta.Logic.Bit.Term;
import Meta.Logic.Bit.BinaryFunction;

import Std;

export namespace
	Meta::Logic::Bit
{
	[[nodiscard]]
	auto constexpr
	(	operator==
	)	(	Term const
			&	i_rLeft
		,	Term const
			&	i_rRight
		)
		noexcept
	->	bool
	{	return
		::std::equal
		(	begin(i_rLeft)
		,	end(i_rLeft)
		,	begin(i_rRight)
		,	end(i_rRight)
		);
	}

	BinaryFunction<bool> constexpr inline
		ComputeEquivalence
	{	&operator==
	};
}
