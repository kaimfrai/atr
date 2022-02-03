export module Pack.Value;

export import Meta.ValueInfo;
export import Meta.TupleList;
export import Std.TemplateConcepts;

export namespace
	Pack
{
	///	wraps around a pack of values
	///	defines value-based operations
	template
		<	auto
			...	t_vpElement
		>
	struct
		[[nodiscard]]
		Value
	:	Meta::TupleList
		<	Meta::ValueInfo
			<	t_vpElement
			>
			...
		>
	{};

	///	stateless value pack instances
	template
		<	typename
				t_tValuePack
		>
	concept
		PureValueInstance
	=	Std::ValuePackInstance
		<	t_tValuePack
		>
	;

	///	pure value packs, sequence packs, or empty packs
	template
		<	typename
				t_tValuePack
		>
	concept
		ValueInstance
	=	PureValueInstance
		<	t_tValuePack
		>
	;
}
