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
			<	char
			,	t_nExtent
			>
		>
	{
		using
			AggregateType
		=	Aggregate
			<	ArrayEntity
				<	char
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
		)	(	char const
				*	i_aString
			)
		:	AggregateType
			{	Data::MakeArrayAggregate<ArrayEntity<char, t_nExtent>>
				(	i_aString
				)
			}
		{}
	};

	template
		<	USize
				t_nExtent
		>
	(	StringLiteral
	)	(	StringLiteral<t_nExtent>
		)
	->	StringLiteral
		<	t_nExtent
		>
	;

	template
		<	USize
				t_nExtent
		>
	(	StringLiteral
	)	(	char const
			(&)	[	t_nExtent
				]
		)
	->	StringLiteral
		<	t_nExtent
		-	1uz
		>
	;
}
