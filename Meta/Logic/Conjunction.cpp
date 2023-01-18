export module Meta.Logic.Conjunction;

import Meta.Logic.Erased.Conjunction;

export namespace
	Meta::Logic::Erased
{
	//	export required for chained operations
	using ::Meta::Logic::Erased::operator and;
}

export namespace
	Meta::Logic
{
	using Erased::operator and;
}
