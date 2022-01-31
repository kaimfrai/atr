export module Pack.Sort;

export import Pack.Filter;
export import Pack.Fold;
export import Pack.Concat;
export import Pack.Size;
export import Pack.Instance;

export import Fold.Comma;;
export import Stateless.Tuple;
export import Stateless.Binding;

export import Std.Concepts;

export import Std;

export namespace
	Pack
{
	/// inserts an argument into a sorted pack using the comparator
	template
		<	Stateless::Type
				t_tCompare
		>
	struct
		CompareSort
	{
		///	default constructor
		constexpr
			CompareSort
			()
		=	default
		;

		///	deduce template from arguments
		constexpr
		explicit
			CompareSort
			(	t_tCompare
			)
		{}

		static
		constexpr
		Stateless::Type auto
			CompareObject
		=	Stateless::Copy<t_tCompare>
		;

		/// inserts the argument at a sorted position into the sorted pack
		[[nodiscard]]
		constexpr
		Instance auto
			operator()
			(	/// assumed to be sorted
				Instance auto
					i_vSortedPack
			,	Stateless::Type auto
					i_vArgument
			)	const
		{
			Stateless::Pair auto
			const
			[	// compare(element, argument) == true
				// e.g. element < argument => sorted before
				vWorsePack
			,	// compare(element, argument) == false
				// e.g. element >= argument => sorted after
				vBetterPack
			]=	Filter
				(	i_vSortedPack
				,	Stateless::BackBinding
					{	CompareObject
					,	i_vArgument
					}
				)
			;

			return
				Concat
				(	vWorsePack
				,	i_vArgument
				,	vBetterPack
				)
			;
		}
	};

	template
		<	Stateless::Type
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
	constexpr
	Instance auto
		Sort
		(	Instance auto
				i_vPack
		,	Stateless::Type auto
				i_fCompare
		)
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
					(	i_vPack
					)
			;
		}
		else
			return
				FoldLeft
				(	i_vPack
				,	CompareSort
					{	i_fCompare
					}
				,	Meta::Pack()
				)
			;
	}

	/// sorts the pack using std::less to sort it from lowest to highest
	[[nodiscard]]
	constexpr
	Instance auto
		SortAscending
		(	Instance auto
				i_vPack
		)
	{
		return
			Sort
			(	i_vPack
			,	std::less<void>
				{}
			)
		;
	}

	/// sorts the pack using std::greater to sort it from highest to lowest
	[[nodiscard]]
	constexpr
	Instance auto
		SortDescending
		(	Instance auto
				i_vPack
		)
	{
		return
			Sort
			(	i_vPack
			,	std::greater<void>
				{}
			)
		;
	}
}

static_assert(Pack::SortAscending(Meta::Pack()) == Meta::Pack());
static_assert(Pack::SortAscending(Meta::Pack<2>()) == Meta::Pack<2>());
static_assert(Pack::SortAscending(Meta::Pack<2,56,3,6>()) == Meta::Pack<2,3,6,56>());
static_assert(Pack::SortDescending(Meta::Pack<2,56,3,6>()) == Meta::Pack<56,6,3,2>());
