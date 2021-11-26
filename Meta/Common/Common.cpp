module;

#include <utility>

export module Meta.Common;

export namespace
	Meta
{
	using
		USize
	=	decltype(0uz)
	;

	using
		SSize
	=	decltype(0z)
	;

	template
		<	USize
			...	t_npIndex
		>
	struct
		IndexSequence
	{};

	template
		<	USize
				t_nLength
		>
	auto constexpr
	(	MakeIndexSequence
	)	()
	{	return
		[]	<	USize
				...	t_npIndex
			>(	std::index_sequence
				<	t_npIndex
					...
				>
			)
		{	return
			IndexSequence
			<	t_npIndex
				...
			>{};
		}(	std::make_index_sequence
			<	t_nLength
			>{}
		);
	}
}
