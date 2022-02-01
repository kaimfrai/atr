export module Pack.Type;

export import Pack.Empty;
export import Meta.Type;
export import Stateless.Tuple;
export import Std.TemplateConcepts;

export namespace
	Pack
{
	///	wraps around a pack of types
	///	defines value-based operations
	template
		<	typename
			...	t_tpElement
		>
	struct
		[[nodiscard]]
		Type
	:	Stateless::Tuple
		<	Meta::TypeToken
			<	t_tpElement
			>
			...
		>
	{};

	///	stateless type pack instances
	template
		<	typename
				t_tTypePack
		>
	concept
		PureTypeInstance
	=	Std::TypePackInstance
		<	t_tTypePack
		>
	;

	///	type packs or empty packs
	template
		<	typename
				t_tTypePack
		>
	concept
		TypeInstance
	=	PureTypeInstance
		<	t_tTypePack
		>
	or	PureEmptyInstance
		<	t_tTypePack
		>
	;
}
