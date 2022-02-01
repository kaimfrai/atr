export module PackTemplate.Value;

export import Meta.ValueInfo;
export import Meta.TypeInfo;
export import Std.TemplateConcepts;

export namespace
	PackTemplate
{
	/// wraps around a template-id for value packs
	/// defines value-based operations
	template
		<	template
				<	auto
					...
				>
			typename
				t_t1ValuePack
		>
	struct
		[[nodiscard]]
		Value
	{
		///	instantiates the template with the given values into a TypeInfo
		template
			<	auto
				...	t_vpAny
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Meta::ValueInfo<t_vpAny>
				...
			)	const
		->	Meta::TypeToken
			<	t_t1ValuePack
				<	t_vpAny
					...
				>
			>
		{	return {};	}

		friend auto constexpr
		(	operator ==
		)	(	Value
			,	Value
			)
		->	bool
		{	return true;	}
	};

	///	stateless value pack template instances
	template
		<	typename
				t_tValueInstance
		>
	concept
		ValueInstance
	=	Std::ValuePackTemplateInstance
		<	t_tValueInstance
		>
	;
}
