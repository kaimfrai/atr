export module Meta.Data.Aggregate.Array;

import Meta.Data.Aggregate.BoundedArray;
import Meta.Data.Aggregate.UnboundedArray;
import Meta.Buffer.Iterator;
import Meta.Token.Array;
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
		=	::std::extent_v<t_tTarget>
		;
		using
			tElement
		=	::std::remove_extent_t<t_tTarget>
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
			{	static_cast<tElement>
				(	i_aSource
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
