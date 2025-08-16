export module Meta.Data.Aggregate.Array;

import Meta.Data.Aggregate.BoundedArray;
import Meta.Data.Aggregate.UnboundedArray;
import Meta.IndexPack;
import Meta.Size;
import Meta.Token.Array;
import Meta.Token.Type.Cast;
import Meta.Token.Type;
import Meta.Trait.ArrayElement;
import Meta.Trait.ArrayExtent;

using ::Meta::IndexPack;
using ::Meta::USize;

export namespace
	Meta::Data
{
	template
		<	typename
				t_tTarget
		,	typename
				t_tSource
		>
	[[nodiscard]]
	auto constexpr inline
	(	MakeArrayAggregate
	)	(	t_tSource const
			*	i_aSource
		)
		noexcept
	->	Aggregate<t_tTarget>
	{
		auto static constexpr
			vExtent
		=	ArrayExtent_Of
			(	Type<t_tTarget>
			)
		;
		auto static constexpr
			vElementType
		=	ArrayElement_Of
			(	Type<t_tTarget>
			)
		;

		auto const
		&	[	...
				vpIndex
			]
		=	IndexPack
			<	vExtent
			>
		;

		return
		{	Cast
			(	vElementType
			,	i_aSource
				[	vpIndex
				]
			)
			...
		};
	}
}
export namespace
	Meta
{
	template
		<	typename
				t_tValue
		,	USize
				t_vExtent
		>
	using
		ArrayAggregate
	=	Data::Aggregate
		<	ArrayEntity
			<	t_tValue
			,	t_vExtent
			>
		>
	;
}
