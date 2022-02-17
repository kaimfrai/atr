export module Meta.Token.Sequence;

export import Std;
export import Meta.Integer;
export import Meta.Index;

namespace
	Meta
{
	template
		<	USize
				t_nLength
		>
	auto constexpr inline
	(	MakeSequence
	)	(	IndexToken<t_nLength>
		)
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
			<	t_npIndex
				...
			>{};
		}(	::std::make_index_sequence
			<	t_nLength
			>{}
		);
	}
}

export namespace
	Meta
{
	template
		<	USize
				t_nSize
		>
	auto constexpr inline
		Sequence
	=	MakeSequence
		(	Index<t_nSize>
		)
	;

	template
		<	USize
				t_nSize
		>
	auto constexpr inline
		ZeroSequence
	=	(	Sequence<t_nSize>
		=	Index<0uz>
		)
	;
}
