export module Meta.ID:StringLiteral;

export import Meta.Data;
export import Meta.Arithmetic;

export import Std;

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
				(	Data::Iterator{i_aString}
				)
			}
		{}

		auto constexpr
		(	starts_with
		)	(	std::string_view
					i_vPrefix
			)	const
		->	bool
		{	return
				std::string_view
				{	this->data()
				,	t_nExtent
				}
			.	starts_with
				(	i_vPrefix
				)
			;
		}

		auto constexpr
		(	ends_with
		)	(	std::string_view
					i_vPrefix
			)	const
		->	bool
		{	return
				std::string_view
				{	this->data()
				,	t_nExtent
				}
			.	ends_with
				(	i_vPrefix
				)
			;
		}
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
