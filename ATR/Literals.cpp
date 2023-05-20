export module ATR.Literals;

import Meta.ID;
import Meta.Token.Type;

export namespace
	ATR
{
	using ::Meta::ID;
}

export namespace
	ATR::Member
{
	using ::Meta::Type;
}

export namespace
	ATR::inline Literals
{
	using ::Meta::Literals::operator""_id;
}
