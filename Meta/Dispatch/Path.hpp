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
	{};

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
}
