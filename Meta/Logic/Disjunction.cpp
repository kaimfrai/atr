export module Meta.Logic.Disjunction;

import Meta.Logic.Erased.Disjunction;

export namespace
	Meta::Logic::Erased
{
	//	export required for chained operations
	using ::Meta::Logic::Erased::operator or;
}

export namespace
	Meta::Logic
{
	using Erased::operator or;
}
