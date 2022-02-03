export module Pack.Concat;

export import Pack.Normalize;
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
		->	decltype(auto)
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

		template
			<	typename
				...	t_tpItem
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Meta::TupleList<t_tpItem> const
				&
				...
			)	const
		->	decltype(auto)
		{	return
			Normalize
			(	Meta::TupleList
				<	t_tpItem
					...
				>{}
			);
		}
	};

	Concatenator constexpr inline
		Concat
	{};
}
