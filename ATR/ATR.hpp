export module ATR;

export import :Address;
export import :Concatenate;
export import :DataMember;
export import :Dependency;
export import :DependencyIDMap;
export import :Erase;
export import :Layout;
export import :Instance;
export import :VirtualArgument;

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
