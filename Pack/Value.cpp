export module Pack.Value;

export import Pack.Empty;
export import Meta.MetaInfo;
export import Meta.ValueInfo;
export import Stateless.Tuple;

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
		<	t_tpStateless{}
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
		>
	concept
		PureValueInstance
	=	Stateless::Type
		<	t_tValuePack
		>
	and	Std::ValuePackInstance
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
	or	PureEmptyInstance
		<	t_tValuePack
		>
	or	requires
			(	t_tValuePack
					c_vValuePack
			)
		{
			// copy constructs Value -> unambiguously derived from Value
			Value
			{	c_vValuePack
			};
		}
	;
}
