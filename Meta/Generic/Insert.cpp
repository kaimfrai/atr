export module Meta.Generic.Insert;

import Meta.Generic.LowerBound;
import Meta.Generic.MoveBackward;
import Meta.Size;

export namespace
	Meta::Generic
{
	template
		<	typename
				t_tElement
		>
	struct
		ArrayInsertion
	{
		t_tElement
		*	Array
		;
		t_tElement
			Element
		;
	};

	template
		<	typename
				t_tElement
		>
	(	ArrayInsertion
	)	(	t_tElement
			*
		,	t_tElement
		)
	->	ArrayInsertion
		<	t_tElement
		>
	;

	template
		<	typename
				t_tElement
		>
	auto constexpr
	(	InsertByIndex
	)	(	SSize
				i_vCount
		,	SSize
				i_vIndex
		,	ArrayInsertion<t_tElement>
				i_vInsert
		)
		noexcept
	{
		MoveBackwardIndex
		(	i_vInsert
			.	Array
		,	i_vIndex
		,	i_vCount
		);

		i_vInsert
		.	Array
			[	i_vIndex
			]
		=	static_cast<t_tElement&&>
			(	i_vInsert
				.	Element
			)
		;
	}
}

export namespace
	Meta::Generic::StructureOfArrays
{
	template
		<	typename
			...	t_tpElement
		>
	auto constexpr
	(	InsertByIndex
	)	(	SSize
			&	i_rCount
		,	SSize
				i_vIndex
		,	ArrayInsertion<t_tpElement>
			...	i_vpElement
		)
		noexcept
	{
		(	...
		,	InsertByIndex
			(	i_rCount
			,	i_vIndex
			,	static_cast<decltype(i_vpElement)&&>
				(	i_vpElement
				)
			)
		);
		++	i_rCount
		;
	}

	template
		<	typename
				t_tKey
		,	typename
			...	t_tpValue
		>
	auto constexpr
	(	InsertByKey
	)	(	SSize
			&	i_rCount
		,	ArrayInsertion<t_tKey>
				i_vKey
		,	ArrayInsertion<t_tpValue>
			...	i_vpValue
		)
		noexcept
	->	SSize
	{
		auto const
			vIndex
		=	LowerBoundIndex
			(	i_vKey
				.	Array
			,	i_rCount
			,	i_vKey
				.	Element
			)
		;
		InsertByIndex
		(	i_rCount
		,	vIndex
		,	static_cast<decltype(i_vKey)&&>
			(	i_vKey
			)
		,	static_cast<decltype(i_vpValue)&&>
			(	i_vpValue
			)
			...
		);
		return
			vIndex
		;
	}

	template
		<	typename
				t_tKey
		,	typename
			...	t_tpValue
		>
	auto constexpr
	(	TryInsertByKey
	)	(	SSize
			&	i_rCount
		,	ArrayInsertion<t_tKey>
				i_vKey
		,	ArrayInsertion<t_tpValue>
			...	i_vpValue
		)
		noexcept
	->	SSize
	{
		auto const
			vIndex
		=	LowerBoundIndex
			(	i_vKey
				.	Array
			,	i_rCount
			,	i_vKey
				.	Element
			)
		;

		if	(	(	vIndex
				!=	i_rCount
				)
			and	(	i_vKey
					.	Array
						[	vIndex
						]
				==	i_vKey
					.	Element
				)
			)
		{	return
				-1z
			;
		}

		InsertByIndex
		(	i_rCount
		,	vIndex
		,	static_cast<decltype(i_vKey)&&>
			(	i_vKey
			)
		,	static_cast<decltype(i_vpValue)&&>
			(	i_vpValue
			)
			...
		);

		return
			vIndex
		;
	}
}
