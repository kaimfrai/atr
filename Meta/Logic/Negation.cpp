export module Meta.Logic.Negation;

//	export required for chained operations
export import Meta.Logic.Erased.Negation;

export namespace
	Meta::Logic
{
	using Erased::operator not;
}
