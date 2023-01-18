export module Meta.Logic.Negation;

import Meta.Logic.Erased.Negation;

export namespace
	Meta::Logic::Erased
{
	//	export required for chained operations
	using ::Meta::Logic::Erased::operator not;
}

export namespace
	Meta::Logic
{
	using Erased::operator not;
}
