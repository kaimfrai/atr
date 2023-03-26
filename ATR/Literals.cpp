export module ATR.Literals;

import Meta.ID.Alias;
import Meta.ID.Literals;

export namespace
	ATR
{
	using Meta::ID_T;
}

export namespace
	ATR::inline Literals
{
	using ::Meta::Literals::operator""_ID;
}
