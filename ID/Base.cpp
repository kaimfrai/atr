export module ID.Base;

export import ID.StringLiteral;
export import Std;

export namespace
	ID
{
	/// serves as a base class for all identifer types
	/// provides conversions to arrays as well as begin and end functions
	template
		<	char
			...	t_vpString
		>
	struct
		Base
	{
		static char constexpr
			RawArray
			[	sizeof...(t_vpString)
			+	1uz
			]
		{	t_vpString
			...
		,	'\0'
		};

		static StringLiteral constexpr
			StringLiteral
		{	RawArray
		};

		static StringView constexpr
			StringView
		{	StringLiteral
		};

		constexpr
		(	operator auto
		)	()	const
		{	return StringView;	}
	};
}

static_assert
(	starts_with
	(	ID::Base<'a', 'b', 'c'>{}
	,	ID::StringLiteral{"ab"}
	)
);

static_assert
(	ends_with
	(	ID::Base<'a', 'b', 'c'>{}
	,	ID::StringLiteral{"bc"}
	)
);
