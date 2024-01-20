export module Meta.Token.Sequence;

import Meta.Token.Index;

import Meta.Size;

import Std;

namespace
	Meta
{
	template
		<	auto
				t_vLength
		>
	[[nodiscard]]
	auto constexpr inline
	(	MakeSequence
	)	(	IndexToken<t_vLength>
		)
		noexcept
	{	return
		[]	<	USize
				...	t_vpIndex
			>(	::std::index_sequence
				<	t_vpIndex
					...
				>
			)
		{	return
			IndexToken
			<	static_cast<decltype(t_vLength)>
				(	t_vpIndex
				)
				...
			>{};
		}(	::std::make_index_sequence
			<	static_cast<std::size_t>
				(	t_vLength
				)
			>{}
		);
	}
}

export namespace
	Meta
{
	template
		<	auto
				t_vSize
		>
	auto constexpr inline
		Sequence
	=	MakeSequence
		(	Index<t_vSize>
		)
	;

	template
		<	auto
				t_vSize
		>
	auto constexpr inline
		ZeroSequence
	=	(	Sequence<t_vSize>
		=	Index<decltype(t_vSize){}>
		)
	;
}
