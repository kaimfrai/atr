export module Meta.ID:Literals;

import :Make;

import Meta.String.Literal;

import Std;

using ::Meta::String::Literal;

export namespace
	Meta::inline Literals
{
	template
		<	Literal
				t_vString
		>
	[[nodiscard]]
	auto constexpr
	(	operator
		""_id
	)	()
		noexcept
	->	decltype
		(	::Make
			<	t_vString
			>(	::std::make_index_sequence
				<	t_vString
					.	max_size
						()
				>{}
			)
		)
	{	return
		{};
	}
}

