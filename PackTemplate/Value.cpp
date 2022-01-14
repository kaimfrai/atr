export module PackTemplate.Value;

export import Meta.ValueInfo;
export import Meta.TypeInfo;
export import Stateless.Type;
export import Std.Concepts;

export namespace
	PackTemplate
{
	/// allow for comparison of Statless objects in this namespace
	using
		Stateless::operator==
	;

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
		constexpr
		Meta::TypeInstance auto
			operator()
			(	Meta::ValueInfo
				<	t_vpAny
				>
				...
			)	const
		{	return
				Meta::T
				<	t_t1ValuePack
					<	t_vpAny
						...
					>
				>
			;
		}
	};

	///	stateless value pack template instances
	template
		<	typename
				t_tValueInstance
		>
	concept
		ValueInstance
	=	Stateless::Type
		<	t_tValueInstance
		>
	and	Std::ValuePackTemplateInstance
		<	t_tValueInstance
		>
	;
}
