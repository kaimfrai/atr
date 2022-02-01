export module PackTemplate.Type;

export import Meta.ValueInfo;
export import Meta.TypeInfo;
export import Stateless.Type;
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
		constexpr
		Meta::TypeInstance auto
			operator()
			(	Meta::TypeToken
				<	t_tpAny
				>
				...
			)	const
		{	return
				Meta::Type
				<	t_t1TypePack
					<	t_tpAny
						...
					>
				>
			;
		}

		friend auto constexpr
		(	operator ==
		)	(	Type
			,	Type
			)
		->	bool
		{	return true;	}
	};

	/// special case for templates with one fixed parameter. pack expansion can not be used with those
	template
		<	template
				<	typename
				>
			typename
				t_t1TypePack
		>
	struct
		[[nodiscard]]
		FixedType
	{
		///	default constructor
		constexpr
			FixedType
			()
		=	default
		;

		///	copy constructor
		constexpr
			FixedType
			(	FixedType
				const&
			)
		=	default
		;

		///	move constructor
		constexpr
			FixedType
			(	FixedType
				&&
			)
		=	default
		;

		///	explicit conversion from another type pack template template
		template
			<	template
					<	template
							<	typename
							>
						typename
					>
				typename
					t_t2Type
			>
		constexpr
		explicit
			FixedType
			(	t_t2Type
				<	t_t1TypePack
				>
			)
		{}

		///	deduces template-id from an instantiated type
		template
			<	typename
					t_tInitial
			>
		constexpr
		explicit
		FixedType
			(	t_t1TypePack
				<	t_tInitial
				>
			)
		{}

		///	instantiates the template with the given types into a TypeInfo
		template
			<	typename
					t_tInitial
			>
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	Meta::TypeToken
				<	t_tInitial
				>
			)	const
		->	Meta::TypeToken
			<	t_t1TypePack
				<	t_tInitial
				>
			>
		{	return{};	}
	};

	///	stateless type pack template instances
	template
		<	typename
				t_tTypeInstance
		>
	concept
		TypeInstance
	=	Stateless::Type
		<	t_tTypeInstance
		>
	and	Std::TypePackTemplateInstance
		<	t_tTypeInstance
		>
	;
}
