export module Meta.Token.Sequence;

import Meta.Token.Index;

import Meta.IndexPack;

using ::Meta::IndexPack;

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
	{
		auto const
		&	[	...
				vpIndex
			]
		=	IndexPack
			<	t_vLength
			>
		;
		return
		IndexToken
		<	vpIndex
			...
		>{};
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
}
