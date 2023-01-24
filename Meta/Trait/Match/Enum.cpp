export module Meta.Trait.Match.Enum;

import Meta.Trait.Match.ScopedEnum;
import Meta.Trait.Match.UnscopedEnum;

export namespace
	Meta::Trait::Match
{
	struct
		Enum
	:	ScopedEnum
	,	UnscopedEnum
	{};
}
