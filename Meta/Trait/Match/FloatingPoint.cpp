export module Meta.Trait.Match.FloatingPoint;

import Meta.Trait.Match.CV;

export namespace
	Meta::Trait::Match
{
	struct
		FloatingPoint
	:	CV<float>
	,	CV<double>
	,	CV<long double>
	{};
}
