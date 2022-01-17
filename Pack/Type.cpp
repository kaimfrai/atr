export module Pack.Type;

export import Pack.Empty;
export import Meta.MetaInfo;
export import Meta.TypeInfo;

export import Stateless.Tuple;
export import Std.Concepts;

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
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		PureTypeInstance_Transform
	=	Stateless::Type_Transform
		<	t_tTypePack
		,	t_t1Transform
		>
	and	Std::TypePackInstance
		<	t_tTypePack
		,	t_t1Transform
		>
	;

	///	stateless type pack instances
	template
		<	typename
				t_tTypePack
		>
	concept
		PureTypeInstance
	=	PureTypeInstance_Transform
		<	t_tTypePack
		,	std::type_identity_t
		>
	;

	///	type packs or empty packs
	template
		<	typename
				t_tTypePack
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		TypeInstance_Transform
	=	PureTypeInstance_Transform
		<	t_tTypePack
		,	t_t1Transform
		>
	or	PureEmptyInstance_Transform
		<	t_tTypePack
		,	t_t1Transform
		>
	;

	///	type packs or empty packs
	template
		<	typename
				t_tTypePack
		>
	concept
		TypeInstance
	=	TypeInstance_Transform
		<	t_tTypePack
		,	std::type_identity_t
		>
	;
}
