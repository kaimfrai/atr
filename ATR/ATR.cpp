export module ATR;

export import ATR.Address;
export import ATR.Concatenate;
export import ATR.DataMember;
export import ATR.Dependency;
export import ATR.DependencyIDMap;
export import ATR.Erase;
export import ATR.Layout;
export import ATR.Instance;
export import ATR.VirtualArgument;

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
	using ::Meta::Literals::operator""_SV;
}
