export module ATR.Literals;

import Meta.ID;

export namespace
	ATR
{
	using ::Meta::String::ID_T;
}

export namespace
	ATR::inline Literals
{
	using ::Meta::Literals::operator""_ID;
}
