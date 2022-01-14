export module ID.Func;

export import ID.Concepts;
export import ID.Base;
export import ID.Make;
export import ID.StringLiteral;

export import PackTemplate.Instance;
export import Std.Concepts;

export namespace
	Function
{
	/// required for ADL of MapAddress
	/// identifies functions
	template
		<	Std::Integral
				t_tChar
		,	t_tChar
			...	t_vpString
		>
	struct
		Name
	:	ID::Base
		<	Name
		,	t_tChar
		,	t_vpString
			...
		>
	{};
}

export namespace
	ID
{
	/// objects that identify functions
	template
		<	typename
				t_tFuncID
		>
	concept
		FuncInstance
	=	PackTemplate::SequenceInstanceOf
		<	t_tFuncID
		,	Function::Name
		>
	;

	/// accepts a string and converts it to a function identifier type
	template
		<	StringLiteral
				t_vString
		>
	using
		FuncT
	=	MakeT
		<	Function::Name
		,	t_vString
		>
	;

	/// accepts a string and converts it to a data identifier value
	template
		<	StringLiteral
				t_vString
		>
	constexpr
	FuncInstance auto
		FuncV
	=	MakeV
		<	Function::Name
		,	t_vString
		>
	;

	/// creates an identifier for functions from a string
	template
		<	StringLiteral
				t_vString
		>
	constexpr
	auto
		operator
		""_fID
		()
	->	FuncT<t_vString>
	{	return{};	}

	/// objects that identify functions and are represented by a given string
	template
		<	typename
				t_tFuncID
		,	StringLiteral
				t_vStart
		>
	concept
		SameFunc
	=	Same
		<	t_tFuncID
		,	t_vStart
		,	Function::Name
		>
	;

	/// objects that identify functions and start with a given string
	template
		<	typename
				t_tFuncID
		,	StringLiteral
				t_vStart
		>
	concept
		FuncPrefix
	=	Prefix
		<	t_tFuncID
		,	t_vStart
		,	Function::Name
		>
	;

	/// objects that identify functions and end with a given string
	template
		<	typename
				t_tFuncID
		,	StringLiteral
				t_vStart
		>
	concept
		FuncSuffix
	=	Suffix
		<	t_tFuncID
		,	t_vStart
		,	Function::Name
		>
	;
}
