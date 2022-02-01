export module PackTemplate.Type;

export import Meta.TypeInfo;
export import Std.TemplateConcepts;

export namespace
	PackTemplate
{
	///	wraps around a template-id for type packs
	///	defines value-based operations
	template
		<	template
				<	typename
					...
				>
			typename
				t_t1TypePack
		>
	struct
		[[nodiscard]]
		Type
	{
		///	instantiates the template with the given types into a TypeInfo
		template
			<	typename
				...	t_tpAny
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Meta::TypeToken
				<	t_tpAny
				>
				...
			)	const
		->	Meta::TypeToken
			<	t_t1TypePack
				<	t_tpAny
					...
				>
			>
		{	return{};	}

		friend auto constexpr
		(	operator ==
		)	(	Type
			,	Type
			)
		->	bool
		{	return true;	}
	};

	///	stateless type pack template instances
	template
		<	typename
				t_tTypeInstance
		>
	concept
		TypeInstance
	=	Std::TypePackTemplateInstance
		<	t_tTypeInstance
		>
	;
}
