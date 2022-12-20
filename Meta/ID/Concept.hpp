export module Meta.ID:Concept;

import :StringView;
import :StringLiteral;

import Meta.Arithmetic.Size;

import Std;

export namespace
	Meta
{
	template
		<	typename
				t_tID
		>
	concept
		ProtoID
	=	requires(t_tID c_vID)
		{
			{ &t_tID::Length } -> std::same_as<USize const*>;
			{ &t_tID::RawArray } -> std::same_as<char const(*)[t_tID::Length + 1uz]>;
			{ &t_tID::StringView } -> std::same_as<StringView const*>;
			{ &t_tID::String } -> std::same_as<StringLiteral<t_tID::Length> const*>;
			{ &t_tID::operator decltype(auto) } -> std::same_as<auto (t_tID::*)() const noexcept -> StringView const&>;
		}
	;
}
