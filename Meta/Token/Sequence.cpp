export module Meta.Token.Sequence;

import Meta.Token.Index;

import Meta.Size;

import Std;

namespace
	Meta
{
	template
		<	auto
				t_nLength
		>
	[[nodiscard]]
	auto constexpr
	(	MakeSequence
	)	(	IndexToken<t_nLength>
		)
		noexcept
	{	return
		[]	<	USize
				...	t_npIndex
			>(	::std::index_sequence
				<	t_npIndex
					...
				>
			)
		{	return
			IndexToken
			<	static_cast<decltype(t_nLength)>
				(	t_npIndex
				)
				...
			>{};
		}(	::std::make_index_sequence
			<	static_cast<std::size_t>
				(	t_nLength
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
				t_nSize
		>
	auto constexpr inline
		Sequence
	=	MakeSequence
		(	Index<t_nSize>
		)
	;

	template
		<	auto
				t_nSize
		>
	auto constexpr inline
		ZeroSequence
	=	(	Sequence<t_nSize>
		=	Index<decltype(t_nSize){}>
		)
	;
}
