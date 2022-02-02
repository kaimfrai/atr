export module Pack.Concat;

export import Pack.Fold;
export import Pack.Normalize;
export import Pack.Instance;
export import Pack.Type;
export import Pack.Value;

export import Meta.TupleList;

export namespace
	Pack
{
	/// takes two PackInstances and concatenates the elements into one pack
	struct
		Concatenator final
	{
		/// applies the transformation to all info objects in the pack and returns a transformed pack
		template
			<	typename
				...	t_tpLeft
			,	typename
				...	t_tpRight
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Meta::TupleList<t_tpLeft...> const
				&
			,	Meta::TupleList<t_tpRight...> const
				&
			)	const
		->	Instance auto
		{	return
			Normalize
			(	Meta::TupleList
				<	t_tpLeft
					...
				,	t_tpRight
					...
				>{}
			);
		}
	};

	///	adds all packed elements together into one pack
	[[nodiscard]]
	auto constexpr
		Concat
		(	Instance auto
				i_vInitial
		,	Instance auto
			...	i_vpOther
		)
	->	Instance auto
	{	return
		FoldLeft
		(	/// prevent matching to copy cons
			Meta::TupleList
			{	Normalize
				(	i_vpOther
				)
				...
			}
		,	Concatenator{}
		,	Normalize
			(	i_vInitial
			)
		);
	}

	/// optimization for one pack
	[[nodiscard]]
	auto constexpr
		Concat
		(	Pack::Instance auto
				i_vInitial
		)
	->	decltype(auto)
	{	return
		Normalize
		(	i_vInitial
		);
	}

	///	optimization for no packs
	[[nodiscard]]
	auto constexpr
		Concat
		()
	->	decltype(auto)
	{	return
		Normalize
		();
	}
}
