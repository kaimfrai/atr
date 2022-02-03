export module PackTemplate.Instance;

export import Pack.Instance;
export import Pack.Template;

export import PackTemplate.Type;
export import PackTemplate.Value;

export import Meta.TupleList;

export namespace
	PackTemplate
{
	/// defines what behaves like a pack template
	template
		<	typename
				t_tPackTemplate
		>
	concept
		Instance
	=	TypeInstance
		<	t_tPackTemplate
		>
	or	ValueInstance
		<	t_tPackTemplate
		>
	;

	///	requirement for a pack of a specific template
	template
		<	typename
				t_tInstance
		,	typename
				t_tPackTemplate
		>
	concept
		InstanceOf
	=	Pack::Instance
		<	t_tInstance
		>
	and	Instance
		<	t_tPackTemplate
		>
	and	(	decltype
			(	Pack::Template
				(	::std::declval<t_tInstance>()
				)
			){}
		==	t_tPackTemplate{}
		)
	;

	///	requirement for a type pack of a specific template
	template
		<	typename
				t_tInstance
		,	template
				<	typename
					...
				>
			typename
				t_t1TypePack
		>
	concept
		TypeInstanceOf
	=	Std::TypePackInstanceOf
		<	t_tInstance
		,	t_t1TypePack
		>
	and	Pack::TypeInstance
		<	t_tInstance
		>
	and	InstanceOf
		<	t_tInstance
		,	PackTemplate::Type
			<	t_t1TypePack
			>
		>
	;

	///	requirement for a value pack of a specific template
	template
		<	typename
				t_tInstance
		,	template
				<	auto
					...
				>
			typename
				t_t1ValuePack
		>
	concept
		ValueInstanceOf
	=	Std::ValuePackInstanceOf
		<	t_tInstance
		,	t_t1ValuePack
		>
	and	Pack::ValueInstance
		<	t_tInstance
		>
	and	InstanceOf
		<	t_tInstance
		,	PackTemplate::Value
			<	t_t1ValuePack
			>
		>
	;
}
