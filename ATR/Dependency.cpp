export module ATR.Dependency;

export import ATR.Erase;
export import Pack.Sort;
export import Pack.Type;
export import Meta.Template;
export import Meta.TypeInfo;
export import Meta.TupleList;

export namespace
	ATR
{
	/// all dependencies will be sorted by their key
	/// this ensures that equivalent dependencies yiels the same type
	/// TODO: check for dublicate keys
	constexpr
	Meta::TypeInstance auto
		MakeSortedDependencyMap
		(	Pack::TypeInstance auto
				i_vUnsorted
		)
	{	Pack::TypeInstance auto const
			vSortedDependencyPack
		=	Pack::SortAscending
			(	i_vUnsorted
			)
		;

		return
		Invoke
		(	Meta::Template<Meta::KeyTuple>
			()
		,	vSortedDependencyPack
		);
	}

	/// creates a TypeInfo of the argument-type
	/// the type will convert to its erased form
	constexpr
	Meta::TypeInstance auto
		MakeDependencyInfo
		(	PackTemplate::TypeInstance auto
				i_vDependencyTemplate
		,	Meta::TypeInstance auto
				i_vArgumentInfo
		,	Meta::ProtoClass auto
			...	i_vpDependency
		)
	{
		if constexpr
			(	sizeof...(
					i_vpDependency
				)
			==	0uz
			)
		{
			return
				i_vDependencyTemplate
				(	ErasedTypeInfo
					(	i_vArgumentInfo
					)
				,	Meta::Type<Meta::KeyTuple<>>
				,	Meta::Type<Meta::KeyTuple<>>
				)
			;
		}
		else
		{
			return
			i_vDependencyTemplate
			(	ErasedTypeInfo
				(	i_vArgumentInfo
				)
			,	MakeSortedDependencyMap
				(	Meta::Pack
					<	decltype(i_vpDependency)
						...
					>()
				)
			);
		}
	}
}
