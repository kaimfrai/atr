export module ATR.Literals;

import ATR.Member.ProtoComposer;

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
	using ::ATR::Member::ProtoComposer;
	using ::Meta::Type;
}

export namespace
	ATR::inline Literals
{
	using ::Meta::Literals::operator""_id;
}
