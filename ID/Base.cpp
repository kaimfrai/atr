export module ID.Base;

export import Pack.Value;
export import ID.StringLiteral;
export import Std;

export namespace
	ID
{
	/// serves as a base class for all identifer types
	/// provides conversions to arrays as well as begin and end functions
	template
		<	template
				<	char
					...
				>
			typename
				t_t1Derived
		,	char
			...	t_vpString
		>
	struct
		Base
	:	Pack::Value
		<	t_vpString
			...
		>
	{
		static char constexpr
			RawArray
			[]
		{	t_vpString
			...
		,	'\0'
		};

		static ::std::string_view constexpr
			StringView
		=	RawArray
		;

		static StringLiteral constexpr
			AsStringLiteral
		{	RawArray
		};

		constexpr
			operator
			StringLiteral<sizeof...(t_vpString) + 1uz>
			()	const
		{	return
				AsStringLiteral
			;
		}
	};

	/// construct from value pack
	template
		<	template
				<	char
					...
				>
			typename
				t_t1Derived
		,	char
			...	t_tpChar
		>
		StringLiteral
		(	Base
			<	t_t1Derived
			,	t_tpChar
				...
			>
		)
	->	StringLiteral<sizeof...(t_tpChar) + 1uz>
	;
}

static_assert
(	ID::Base<Pack::Value, 'a', 'b', 'c'>
	::	StringView
	.	starts_with
		(	"ab"
		)
);

static_assert
(	ID::Base<Pack::Value, 'a', 'b', 'c'>
	::	StringView
	.	ends_with
		(	"bc"
		)
);
