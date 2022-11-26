export module Meta.ID:StringLiteral;

export import Meta.Data;
export import Meta.Arithmetic;

export namespace
	Meta
{
	template
		<	Meta::USize
				t_nExtent
		>
	struct
		StringLiteral final
	:	Aggregate
		<	ArrayEntity
			<	char8_t
			,	t_nExtent
			>
		>
	{
		using
			AggregateType
		=	Aggregate
			<	ArrayEntity
				<	char8_t
				,	t_nExtent
				>
			>
		;

		constexpr
		(	StringLiteral
		)	()
		=	default;

		constexpr
		(	StringLiteral
		)	(	auto const
				*	i_aString
			)
		:	AggregateType
			{	Data::MakeArrayAggregate<ArrayEntity<char8_t, t_nExtent>>
				(	i_aString
				)
			}
		{}
	};

	template
		<	typename
				t_tChar
		,	USize
				t_nExtent
		>
	(	StringLiteral
	)	(	t_tChar const
			(&)	[	t_nExtent
				]
		)
	->	StringLiteral
		<	t_nExtent
		-	1uz
		>
	;
}
