export module ID.Type;

export import ID.Concepts;
export import ID.Base;
export import ID.Make;
export import ID.StringLiteral;

export import PackTemplate.Instance;
export import Std.Concepts;

export namespace
	ID
{
	/// identifies types
	template
		<	char
			...	t_vpString
		>
	struct
		Type
	:	Base
		<	Type
		,	t_vpString
			...
		>
	{};

	/// objects that identify types
	template
		<	typename
				t_tTypeID
		>
	concept
		TypeInstance
	=	PackTemplate::ValueInstanceOf
		<	t_tTypeID
		,	Type
		>
	;

	/// accepts a string and converts it to a data identifier type
	template
		<	StringLiteral
				t_vString
		>
	using
		TypeT
	=	MakeT
		<	Type
		,	t_vString
		>
	;

	/// accepts a string and converts it to a data identifier value
	template
		<	StringLiteral
				t_vString
		>
	constexpr
	TypeInstance auto
		TypeV
	=	MakeV
		<	Type
		,	t_vString
		>
	;

	/// creates an identifier for types from a string
	template
		<	StringLiteral
				t_vString
		>
	constexpr
	auto
		operator
		""_tID
		()
	->	TypeT<t_vString>
	{	return{};	}

	/// objects that identify types and are represented by a given string
	template
		<	typename
				t_tTypeID
		,	StringLiteral
				t_vString
		>
	concept
		SameType
	=	Same
		<	t_tTypeID
		,	t_vString
		,	Type
		>
	;

	/// objects that identify types and start with a given string
	template
		<	typename
				t_tTypeID
		,	StringLiteral
				t_vStart
		>
	concept
		TypePrefix
	=	Prefix
		<	t_tTypeID
		,	t_vStart
		,	Type
		>
	;

	/// objects that identify types and end with a given string
	template
		<	typename
				t_tTypeID
		,	StringLiteral
				t_vStart
		>
	concept
		TypeSuffix
	=	Suffix
		<	t_tTypeID
		,	t_vStart
		,	Type
		>
	;
}
