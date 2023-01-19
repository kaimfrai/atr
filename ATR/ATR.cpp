export module ATR;

export import ATR.Address;
export import ATR.Concatenate;
export import ATR.DataMember;
export import ATR.Dependency;
export import ATR.DependencyIDMap;
export import ATR.Erase;
export import ATR.Layout.AliasLayout;
export import ATR.Layout.Bit.Access;
export import ATR.Layout.Bit.Array;
export import ATR.Layout.Bit.ElementReference;
export import ATR.Layout.Bit.Iterator;
export import ATR.Layout.Bit.Layout;
export import ATR.Layout.Bit.MemberOffset;
export import ATR.Layout.Bit.Reference;
export import ATR.Layout.Bit.View;
export import ATR.Layout.Concept;
export import ATR.Layout.Data;
export import ATR.Layout.Layout;
export import ATR.Layout.MemberOffset;
export import ATR.Layout.Static;
export import ATR.Layout.Type;
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
