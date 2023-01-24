export module Meta.Trait.Match.NullPointer;

import Meta.Trait.Match.CV;

export namespace
	Meta::Trait::Match
{
	using
		NullPointer
	=	CV
		<	decltype(nullptr)
		>
	;
}
