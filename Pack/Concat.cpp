export module Pack.Concat;

export import Pack.Fold;
export import Pack.Normalize;
export import Pack.Instance;
export import Pack.Type;
export import Pack.Value;

export import Stateless.Tuple;

export namespace
	Pack
{
	/// takes two PackInstances and concatenates the elements into one pack
	struct
		Concatenator
	{
		/// applies the transformation to all info objects in the pack and returns a transformed pack
		[[nodiscard]]
		constexpr
		Instance auto
			operator()
			(	Instance auto
					i_vPreviousResult
			,	Instance auto
					i_vNextPack
			)	const
		{
			return
				Normalize
				(	i_vPreviousResult
					.	ConcatWith
						(	i_vNextPack
						)
				)
			;
		}
	};

	///	adds all packed elements together into one pack
	[[nodiscard]]
	constexpr
	Instance auto
		Concat
		(	Pack::Instance auto
				i_vInitial
		,	Pack::Instance auto
			...	i_vpOther
		)
	{
		return
			FoldLeft
			(	/// prevent matching to copy cons
				Stateless::Tuple
				{	Normalize
					(	i_vpOther
					)
					...
				}
			,	Stateless::Copy<Concatenator>
			,	Normalize
				(	i_vInitial
				)
			)
		;
	}

	/// optimization for one pack
	[[nodiscard]]
	constexpr
	Instance auto
		Concat
		(	Pack::Instance auto
				i_vInitial
		)
	{	return
			Normalize
			(	i_vInitial
			)
		;
	}

	///	optimization for no packs
	[[nodiscard]]
	constexpr
	Instance auto
		Concat
		()
	{	return
			Normalize
				()
		;
	}
}
