export module Meta.Data.Aggregate.Array;

import Meta.Data.Aggregate.BoundedArray;
import Meta.Data.Aggregate.UnboundedArray;
import Meta.Buffer.Iterator;
import Meta.Trait.ArrayExtent;
import Meta.Trait.ArrayElement;
import Meta.Token.Array;
import Meta.Token.Type;
import Meta.Token.Type.Cast;
import Meta.Size;

import Std;

using ::Meta::USize;
using ::Meta::Buffer::Iterator;

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
	auto constexpr
	(	MakeArrayAggregate
	)	(	Iterator<t_tSource const>
				i_aSource
		)
		noexcept
	->	Aggregate<t_tTarget>
	{
		auto constexpr
			vExtent
		=	ArrayExtent_Of
			(	Type<t_tTarget>
			)
		;
		static auto constexpr
			vElementType
		=	ArrayElement_Of
			(	Type<t_tTarget>
			)
		;

		return
		[	i_aSource
		]	<	::std::size_t
				...	t_npIndex
			>(	::std::index_sequence
				<	t_npIndex
					...
				>
			)
		->	Aggregate<t_tTarget>
		{	return
			{	Cast
				(	vElementType
				,	i_aSource
					[	t_npIndex
					]
				)
				...
			};
		}(	::std::make_index_sequence
			<	vExtent
			>{}
		);
	}
}
export namespace
	Meta
{
	template
		<	typename
				t_tValue
		,	USize
				t_nExtent
		>
	using
		ArrayAggregate
	=	Data::Aggregate
		<	ArrayEntity
			<	t_tValue
			,	t_nExtent
			>
		>
	;
}
