export module Pack.Normalize;

export import Meta.Type;
export import Meta.MetaInfo;
export import Pack.Type;
export import Pack.Value;
export import Pack.Empty;
export import Stateless.Tuple;

export namespace
	Pack
{
	/// function object converting packs into normalized forms
	struct
		[[nodiscard]]
		Normalizer
	{
		/// normalizes zero input to an EmptyPack
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	()	const
		->	Empty
		{	return{};	}

		/// simply returns the empty pack
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Empty
			)	const
		->	Empty
		{	return{};	}

		/// maps empty StatelessTuples to the EmptyPack
		/// overloaded for other pack types
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Stateless::Tuple<>
			)	const
		->	Empty
		{	return{};	}

		///	normalizes multiple types into one pack
		///	overloaded for other pack types
		template
			<	typename
				...	t_tpElement
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Meta::TypeToken<t_tpElement>
				...
			)	const
		->	Type
			<	t_tpElement
				...
			>
		{	return{};	}

		///	normalizes multiple values into one pack
		///	overloaded for other pack types
		template
			<	auto
				...	t_vpElement
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Meta::ValueInfo<t_vpElement>
				...
			)	const
		->	Value
			<	t_vpElement
				...
			>
		{	return{};	}

		///	consider all other StatelessTuples as normalized
		/// overloaded for other pack types
		template
			<	typename
				...	t_tpElement
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Stateless::Tuple
				<	Meta::TypeToken<t_tpElement>
					...
				>
			)	const
		->	Type
			<	t_tpElement
				...
			>
		{	return{};	}

		///	consider all other StatelessTuples as normalized
		/// overloaded for other pack types
		template
			<	auto
				...	t_vpElement
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Stateless::Tuple
				<	Meta::ValueInfo<t_vpElement>
					...
				>
			)	const
		->	Value
			<	t_vpElement
				...
			>
		{	return{};	}

		///	consider all other StatelessTuples as normalized
		/// overloaded for other pack types
		template
			<	typename
				...	t_tpElement
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Stateless::Tuple
				<	t_tpElement
					...
				>	i_vTuple
			)	const
		->	Stateless::Tuple
			<	t_tpElement
				...
			>
		{	return i_vTuple;	}
	};

	Normalizer constexpr inline
		Normalize
	{};
}
