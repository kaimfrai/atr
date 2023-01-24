export module Meta.Trait.Match.Scalar;

import Meta.Trait.Match.Integral;
import Meta.Trait.Match.FloatingPoint;
import Meta.Trait.Match.NullPointer;
import Meta.Trait.Match.Enum;
import Meta.Trait.Match.Pointer;
import Meta.Trait.Match.Member;
import Meta.Logic.LiteralBase;

export namespace
	Meta::Trait::Match
{
	struct
		Scalar
	:	NullPointer
	,	Integral
	,	FloatingPoint
	,	Enum
	,	Pointer
	,	Member
	{};
}
