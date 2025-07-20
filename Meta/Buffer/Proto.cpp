export module Meta.Buffer.Proto;

import Meta.Size;

import std;

export namespace
	Meta::Buffer
{
	template
		<	typename
				t_tBuffer
		>
	concept
		Proto
	=	std::ranges::contiguous_range
		<	t_tBuffer
		>
	and	std::default_initializable
		<	decltype(auto(std::declval<t_tBuffer>()[0uz]))
		>
	and	std::is_trivially_destructible_v
		<	decltype(auto(std::declval<t_tBuffer>()[0uz]))
		>
	;
}
