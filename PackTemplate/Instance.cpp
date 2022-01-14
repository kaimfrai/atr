export module PackTemplate.Instance;

export import Pack.Instance;
export import Pack.Normalize;
export import Pack.Template;

export import PackTemplate.Type;
export import PackTemplate.Value;
export import PackTemplate.Sequence;

export import Stateless.Tuple;
export import Std.Concepts;

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
	or	SequenceInstance
		<	t_tPackTemplate
		>
	or	Std::SameAs
		<	t_tPackTemplate
		,	Pack::Normalizer
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
	and	(	Pack::Template
			(	Stateless::Copy<t_tInstance>
			)
		==	Stateless::Copy<t_tPackTemplate>
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

	///	requirement for a sequence pack of a specific template
	template
		<	typename
				t_tInstance
		,	template
				<	typename
						t_tNested
				,	t_tNested
					...
				>
			typename
				t_t1SequencePack
		>
	concept
		SequenceInstanceOf
	=	Std::SequencePackInstanceOf
		<	t_tInstance
		,	t_t1SequencePack
		>
	and	Pack::SequenceInstance
		<	t_tInstance
		>
	and	InstanceOf
		<	t_tInstance
		,	PackTemplate::Sequence
			<	t_t1SequencePack
			>
		>
	;
}
