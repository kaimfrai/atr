export module Meta.Logic.Bit.Equivalence;

import Meta.Logic.Bit.Term;
import Meta.Logic.Bit.BinaryFunction;
import Meta.Functional;

export namespace
	Meta::Logic::Bit
{
	BinaryFunction<bool> constexpr inline
		ComputeEquivalence
	{	Fold<&Functional::Key::operator== >{}
	};
}
