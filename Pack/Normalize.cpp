export module Pack.Normalize;

export import Meta.Type;
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
		constexpr
		auto
			operator()
			()	const
		->	Empty
		{	return{};	}

		/// simply returns the empty pack
		[[nodiscard]]
		constexpr
		auto
		operator()
			(	Empty
			)	const
		->	Empty
		{	return{};	}

		/// maps empty StatelessTuples to the EmptyPack
		/// overloaded for other pack types
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	Stateless::Tuple
				<>
			)	const
		->	Empty
		{	return{};	}

		///	normalizes multiple types into one pack
		///	overloaded for other pack types
		template
			<	typename
					t_tInitial
			,	typename
				...	t_tpElement
			>
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	Meta::TypeToken
				<	t_tInitial
				>
			,	Meta::TypeToken
				<	t_tpElement
				>
				...
			)	const
		->	Type
			<	t_tInitial
			,	t_tpElement
			...
			>
		{	return{};	}

		///	normalizes multiple values into one pack
		///	overloaded for other pack types
		template
			<	auto
					t_vInitial
			,	auto
				...	t_vpElement
			>
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	Meta::ValueInfo
				<	t_vInitial
				>
			,	Meta::ValueInfo
				<	t_vpElement
				>
				...
			)	const
		{	if constexpr
				(	(	Stateless::Type
						<	decltype(t_vInitial)
						>
					and	...
					and	Stateless::Type
						<	decltype(t_vpElement)
						>
					)
				)
			{
				return
					StatelessValue
					<	decltype(t_vInitial)
					,	decltype(t_vpElement)
						...
					>{}
				;
			}
			else
				return
					Value
					<	t_vInitial
					,	t_vpElement
						...
					>{}
				;
		}

		///	consider all other StatelessTuples as normalized
		/// overloaded for other pack types
		template
			<	Stateless::Type
				...	t_tpStateless
			>
		[[nodiscard]]
		constexpr
		Stateless::TupleInstance auto
			operator()
			(	Stateless::Tuple
				<	t_tpStateless
					...
				>	i_vTuple
			)	const
		{	if constexpr
				(	(	...
					and	Meta::TypeInstance
						<	t_tpStateless
						>
					)
				or	(	...
					and	Meta::ValueInstance
						<	t_tpStateless
						>
					)
				)
			{
				return
					operator()
					(	Stateless::Copy
						<	t_tpStateless
						>
						...
					)
				;
			}
			else
				return
					i_vTuple
				;
		}

		///	normalizes packed types into one pack
		///	overloaded for other pack types
		template
			<	template
					<	typename
						...
					>
				typename
					t_t1TypePack
			,	typename
				...	t_tpElement
			>
		[[nodiscard]]
		constexpr
		TypeInstance auto
			operator()
			(	t_t1TypePack
				<	t_tpElement
					...
				>
			)	const
		///	do not decompose InfoInstances
		requires
			(	not
				Meta::InfoInstance
				<	t_t1TypePack
					<	t_tpElement
						...
					>
				>
			)
		{	return
				operator()
				(	Meta::Type<t_tpElement>
					...
				)
			;
		}

		///	normalizes packed types into one pack
		///	overloaded for other pack types
		///	special case: StatelessValue treated as ValuePack
		template
			<	typename
				...	t_tpElement
			>
		[[nodiscard]]
		constexpr
		TypeInstance auto
			operator()
			(	StatelessValue
				<	t_tpElement
					...
				>	i_vStatelessValue
			)	const
		{	return
				i_vStatelessValue
			;
		}

		///	normalizes packed values into one pack
		///	overloaded for other pack types
		template
			<	template
					<	auto
						...
					>
				typename
					t_t1ValuePack
			,	auto
				...	t_vpElement
			>
		[[nodiscard]]
		constexpr
		ValueInstance auto
			operator()
			(	t_t1ValuePack
				<	t_vpElement
					...
				>
			)	const
		///	do not decompose InfoInstances
		requires
			(	not
				Meta::InfoInstance
				<	t_t1ValuePack
					<	t_vpElement
						...
					>
				>
			)
		{	return
				operator()
				(	Meta::V<t_vpElement>
					...
				)
			;
		}
	};

	Normalizer constexpr inline
		Normalize
	{};
}
