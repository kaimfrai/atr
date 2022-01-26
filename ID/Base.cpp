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
	};
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
