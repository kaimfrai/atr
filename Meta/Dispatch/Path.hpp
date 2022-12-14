export module Meta.Dispatch:Path;

export import Meta.ID;

export namespace
	Meta::Dispatch
{
	template
		<	typename
				t_tFunction
		,	ProtoID
				t_tID
		>
	struct
		PathID
	{
		using
			FunctionType
		=	t_tFunction
		;

		using
			ID
		=	t_tID
		;
	};

	template
		<	typename
				t_tFunction
		,	StringLiteral
				t_vName
		>
	using
		Path
	=	PathID
		<	t_tFunction
		,	ID_T<t_vName>
		>
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tFunction
		,	StringLiteral
				t_vName
		>
	concept
		ProtoPath
	=	std::same_as
		<	typename
				t_tProto
			::	FunctionType
		,	t_tFunction
		>
	and	t_vName.starts_with
		(	t_tProto
		::	ID
		::	RawArray
		)
	;
}
