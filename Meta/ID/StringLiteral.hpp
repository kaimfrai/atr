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
	:	Meta::ArrayValue
		<	char
		,	t_nExtent
		>
	{
		constexpr
		(	StringLiteral
		)	()
		=	default;

		constexpr
		(	StringLiteral
		)	(	char const
				*	i_aString
			)
		:	Meta::ArrayValue
			<	char
			,	t_nExtent
			>{	i_aString
			}
		{}
	};

	template
		<	Meta::USize
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
