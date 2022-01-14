export module Pack.Value;

export import Pack.Sequence;
export import Pack.Empty;
export import Meta.MetaInfo;
export import Meta.ValueInfo;
export import <Stateless/Tuple.hpp>;
export import <Std/Concepts.hpp>;

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
	:	Stateless::Tuple
		<	Meta::ValueInfo
			<	t_vpElement
			>
			...
		>
	{};

	/// inherits from Pack::Value. provides more useful debugging information for stateless types than Value<{}, {}, {}, ...>
	template
		<	Stateless::Type
			...	t_tpStateless
		>
	struct
		[[nodiscard]]
		StatelessValue
	:	Value
		<	Stateless::Copy
			<	t_tpStateless
			>
			...
		>
	{
		// default constructor
		constexpr
			StatelessValue
			()
		=	default
		;

		/// deduce template from argument
		constexpr
		explicit
			StatelessValue
			(	t_tpStateless
				...
			)
		{}
	};

	///	stateless value pack instances
	template
		<	typename
				t_tValuePack
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		PureValueInstance_Transform
	=	Stateless::Type
		<	t_tValuePack
		,	t_t1Transform
		>
	and	Std::ValuePackInstance
		<	t_tValuePack
		,	t_t1Transform
		>
	;

	///	stateless value pack instances
	template
		<	typename
				t_tValuePack
		>
	concept
		PureValueInstance
	=	PureValueInstance_Transform
		<	t_tValuePack
		,	std::type_identity_t
		>
	;

	///	pure value packs, sequence packs, or empty packs
	template
		<	typename
				t_tValuePack
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		ValueInstance_Transform
	=	PureValueInstance_Transform
		<	t_tValuePack
		,	t_t1Transform
		>
	or	PureSequenceInstance_Transform
		<	t_tValuePack
		,	t_t1Transform
		>
	or	PureEmptyInstance_Transform
		<	t_tValuePack
		,	t_t1Transform
		>
	or	requires
			(	t_t1Transform
				<	t_tValuePack
				>	c_vValuePack
			)
		{
			// copy constructs Value -> unambiguously derived from Value
			Value
			{	c_vValuePack
			};
		}
	;

	///	pure value packs, sequence packs, or empty packs
	template
		<	typename
				t_tValuePack
		>
	concept
		ValueInstance
	=	ValueInstance_Transform
		<	t_tValuePack
		,	std::type_identity_t
		>
	;
}
