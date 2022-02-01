export module Pack.Filter;

export import Fold.Comma;
export import Stateless.Tuple;
export import Meta.Concept.Empty;
export import Pack.Instance;
export import Pack.Concat;
export import Meta.Pack;
export import Pack.Fold;
export import Pack.Size;

export namespace
	Pack
{
	/// appends info objects to a pack if they satisfy a predicate
	template
		<	Meta::ProtoStateless
				t_tPredicate
		>
	struct
		[[nodiscard]]
		FilterSplit
	{
		static t_tPredicate constexpr
			PredicateObject
		{};

		/// default constructor
		constexpr
		(	FilterSplit
		)	()
		=	default;

		/// deduce template from argument
		explicit constexpr
		(	FilterSplit
		)	(	t_tPredicate
			)
		{}

		///	appends the argument to the pack if it satisfies the predicate
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Stateless::Pair auto
					i_vCurrentResult
			,	Pack::Instance auto
					i_vArgument
			)	const
		->	Stateless::Pair auto
		{
			auto const
			[	vPositivePack
			,	vNegativePack
			]=	i_vCurrentResult
			;

			//	if the predicate is met, put the argument in the positive pack
			if constexpr
				(	PredicateObject
					(	i_vArgument
					)
				)
				return
				Stateless::Tuple
				{	Concat
					(	vPositivePack
					,	i_vArgument
					)
				,	vNegativePack
				};
			// put it in the negative pack otherwise
			else
				return
				Stateless::Tuple
				{	vPositivePack
				,	Concat
					(	vNegativePack
					,	i_vArgument
					)
				};
		}
	};

	template
		<	Meta::ProtoStateless
				t_tPredicate
		>
	(	FilterSplit
	)	(	t_tPredicate
		)
	->	FilterSplit
		<	t_tPredicate
		>
	;

	///	returns a new pack containing only the elements that satisfy the predicate
	[[nodiscard]]
	auto constexpr
	(	Filter
	)	(	Instance auto
				i_vPack
		,	Meta::ProtoStateless auto
				i_fPredicate
		)
	->	Stateless::Pair auto
	{	/// optimization for empty packs
		if constexpr
			(	EmptyInstance
				<	decltype(
						i_vPack
					)
				>
			)
		{
			return
			Stateless::Tuple
			{	Meta::Pack()
			,	Meta::Pack()
			};
		}
		else
			return
			FoldLeft
			(	i_vPack
			,	FilterSplit
				{	i_fPredicate
				}
			,	Stateless::Tuple
				{	Meta::Pack()
				,	Meta::Pack()
				}
			);
	}

	/// filters only the elements that satisfy the predicate
	[[nodiscard]]
	auto constexpr
		FilterPositive
		(	Instance auto
				i_vPack
		,	Meta::ProtoStateless auto
				i_fPredicate
		)
	->	Instance auto
	{
		auto const
		[	vPositivePack
		,	vNegativePack
		]=	Filter
			(	i_vPack
			,	i_fPredicate
			)
		;

		return
			vPositivePack
		;
	}

	/// filters only the elements that do not satisfy the predicate
	[[nodiscard]]
	auto constexpr
		FilterNegative
		(	Instance auto
				i_vPack
		,	Meta::ProtoStateless auto
				i_fPredicate
		)
	->	Instance auto
	{
		auto const
		[	vPositivePack
		,	vNegativePack
		]=	Filter
			(	i_vPack
			,	i_fPredicate
			)
		;

		return
			vNegativePack
		;
	}
}

static_assert(Pack::FilterPositive(Meta::Pack<0,1,2>(), Meta::V<[](auto i){return i > 0;}>) == Meta::Pack<1,2>());
