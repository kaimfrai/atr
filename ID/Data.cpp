export module ID.Data;

export import ID.Concepts;
export import ID.Base;
export import ID.Make;
export import ID.StringLiteral;

export import PackTemplate.Instance;
export import Std.Concepts;

export namespace
	ID
{
	/// identifies data
	template
		<	Std::Integral
				t_tChar
		,	t_tChar
			...	t_vpString
		>
	struct
		Data
	:	Base
		<	Data
		,	t_tChar
		,	t_vpString
			...
		>
	{};

	/// objects that identify data
	template
		<	typename
				t_tDataID
		>
	concept
		DataInstance
	=	PackTemplate::SequenceInstanceOf
		<	t_tDataID
		,	Data
		>
	;

	/// accepts a string and converts it to a data identifier type
	template
		<	StringLiteral
				t_vString
		>
	using
		DataT
	=	MakeT
		<	Data
		,	t_vString
		>
	;

	/// accepts a string and converts it to a data identifier value
	template
		<	StringLiteral
				t_vString
		>
	constexpr
	DataInstance auto
		DataV
	=	MakeV
		<	Data
		,	t_vString
		>
	;

	///	creates an identifier for data from a string
	template
		<	StringLiteral
				t_vString
		>
	constexpr
	auto
		operator
		""_dID
		()
	->	DataT<t_vString>
	{	return{};	}

	/// objects that identify data and are represented by a given string
	template
		<	typename
				t_tDataID
		,	StringLiteral
				t_vString
		>
	concept
		SameData
	=	Same
		<	t_tDataID
		,	t_vString
		,	Data
		>
	;

	/// objects that identify data and start with a given string
	template
		<	typename
				t_tDataID
		,	StringLiteral
				t_vStart
		>
	concept
		DataPrefix
	=	Prefix
		<	t_tDataID
		,	t_vStart
		,	Data
		>
	;

	/// objects that identify data and end with a given string
	template
		<	typename
				t_tDataID
		,	StringLiteral
				t_vStart
		>
	concept
		DataSuffix
	=	Suffix
		<	t_tDataID
		,	t_vStart
		,	Data
		>
	;
}
