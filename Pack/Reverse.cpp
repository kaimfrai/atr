export module Pack.Reverse;

export import Meta.Pack;
export import Pack.Template;
export import Pack.Fold;
export import Pack.Instance;
export import Pack.Size;
export import Pack.Apply;
export import Pack.Concat;
export import Meta.MetaInfo;

export import Fold.Comma;
export import Stateless.Binding;
export import Stateless.Tuple;

export namespace
	Pack
{
	struct
		[[nodiscard]]
		ReverseConcat
	{
		///	appends the argument to the pack if it satisfies the predicate
		[[nodiscard]]
		constexpr
		Instance auto
			operator()
			(	Instance auto
					i_vCurrentResult
			,	Meta::InfoInstance auto
					i_vArgument
			)	const
		{	return
				Concat
				(	i_vArgument
				,	i_vCurrentResult
				)
			;
		}
	};

	///	returns a new pack with the elements in reversed order
	[[nodiscard]]
	constexpr
	Instance auto
		Reverse
		(	Instance auto
				i_vPack
		)
	{
		/// optimization for packs of size 0 or 1
		if constexpr
			(	OptionalInstance
				<	decltype(
						i_vPack
					)
				>
			)
		{
			return
				i_vPack
			;
		}
		else
			return
				Apply
				(	FoldLeft
					(	i_vPack
					,	ReverseConcat
						{}
					,	Meta::Pack()
					)
				,	Template
					(	i_vPack
					)
				)()
			;
	}
}

static_assert(Pack::Reverse(Meta::Pack()) == Meta::Pack());
static_assert(Pack::Reverse(Meta::Pack<double>()) == Meta::Pack<double>());
static_assert(Pack::Reverse(Meta::Pack<double, bool, int>()) == Meta::Pack<int, bool, double>());
