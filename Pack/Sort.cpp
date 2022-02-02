export module Pack.Sort;

export import Pack.Filter;
export import Pack.Fold;
export import Pack.Concat;
export import Pack.Size;
export import Pack.Instance;

export import Fold.Comma;
export import Meta.TupleList;

export import Std;

export namespace
	Pack
{
	/// inserts an argument into a sorted pack using the comparator
	template
		<	Meta::ProtoStateless
				t_tCompare
		>
	struct
		CompareSort
	{
		///	default constructor
		constexpr
		(	CompareSort
		)	()
		=	default;

		///	deduce template from arguments
		explicit constexpr
		(	CompareSort
		)	(	t_tCompare
			)
		{}

		static t_tCompare constexpr
			CompareObject
		{};

		/// inserts the argument at a sorted position into the sorted pack
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	/// assumed to be sorted
				Instance auto
					i_vSortedPack
			,	Meta::ProtoStateless auto
					i_vArgument
			)	const
		->	decltype(auto)
		{
			auto const
			[	// compare(element, argument) == true
				// e.g. element < argument => sorted before
				vWorsePack
			,	// compare(element, argument) == false
				// e.g. element >= argument => sorted after
				vBetterPack
			]=	Filter
				(	i_vSortedPack
				,	[]	(	auto
								i_vCompare
						)
					{	return
						CompareObject
						(	i_vCompare
						,	decltype(i_vArgument){}
						);
					}
				)
			;

			return
			Concat
			(	UnwrapValue(vWorsePack)
			,	i_vArgument
			,	UnwrapValue(vBetterPack)
			);
		}
	};

	template
		<	Meta::ProtoStateless
				t_tCompare
		>
	(	CompareSort
	)	(	t_tCompare
		)
	->	CompareSort
		<	t_tCompare
		>
	;

	/// sorts the pack using the give compare function object
	[[nodiscard]]
	auto constexpr
	(	Sort
	)	(	Instance auto
				i_vPack
		,	Meta::ProtoStateless auto
				i_fCompare
		)
	->	decltype(auto)
	{
		if constexpr
			(	OptionalInstance
				<	decltype(
						i_vPack
					)
				>
			)
		{
			return
			Normalize
			(	UnwrapValue(i_vPack)
			);
		}
		else
			return
			FoldLeft
			(	i_vPack
			,	CompareSort
				{	i_fCompare
				}
			,	Meta::Pack()
			);
	}

	/// sorts the pack using std::less to sort it from lowest to highest
	[[nodiscard]]
	auto constexpr
		SortAscending
		(	Instance auto
				i_vPack
		)
	->	decltype(auto)
	{	return
		Sort
		(	i_vPack
		,	std::less<void>
			{}
		);
	}

	/// sorts the pack using std::greater to sort it from highest to lowest
	[[nodiscard]]
	auto constexpr
	(	SortDescending
	)	(	Instance auto
				i_vPack
		)
	->	decltype(auto)
	{	return
		Sort
		(	i_vPack
		,	std::greater<void>
			{}
		);
	}
}

static_assert(Pack::SortAscending(Meta::Pack()) == Meta::Pack());
static_assert(Pack::SortAscending(Meta::Pack<2>()) == Meta::Pack<2>());
static_assert(Pack::SortAscending(Meta::Pack<2,56,3,6>()) == Meta::Pack<2,3,6,56>());
static_assert(Pack::SortDescending(Meta::Pack<2,56,3,6>()) == Meta::Pack<56,6,3,2>());
