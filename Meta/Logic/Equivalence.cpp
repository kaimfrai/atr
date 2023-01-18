export module Meta.Logic.Equivalence;

import Meta.Logic.Erased.Equivalence;

export namespace
	Meta::Logic::Erased
{
	//	export required for chained operations
	using ::Meta::Logic::Erased::operator ==;
}

export namespace
	Meta::Logic
{
	using Erased::operator ==;
}
