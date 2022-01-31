export module Pack.Accumulate;

export import Meta.Pack;
export import Pack.Fold;
export import Pack.Transform;
export import Pack.Apply;
export import Pack.Instance;
export import Pack.Sequence;
export import Meta.MetaInfo;

export import Fold.Comma;;
export import Fold.LogicalAnd;;
export import Fold.LogicalOr;;
export import Stateless.Tuple;
export import Stateless.Binding;
export import Std.Concepts;

export namespace
	Pack
{
	///	checks if the predicate is true for all elements in the pack
	struct
		[[nodiscard]]
		AllFunc
	{
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	Instance auto
					i_vPack
			,	Stateless::Type auto
					i_fPredicate
			)	const
		noexcept
		->	bool
		{
			///	optimization for empty packs
			if constexpr
				(	EmptyInstance
					<	decltype(
							i_vPack
						)
					>
				)
			{
				return
					true
				;
			}
			else
				return
					Apply
					(	Transform
						(	i_vPack
						,	i_fPredicate
						)
					,	Fold::LeftLogicalAnd
					)
				;
		}
	};

	AllFunc constexpr inline
		All
	{};

	///	checks if the predicate is true for any elements in the pack
	struct
		[[nodiscard]]
		AnyFunc
	{
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	Instance auto
					i_vPack
			,	Stateless::Type auto
					i_fPredicate
			)	const
		noexcept
		->	bool
		{
			///	optimization for empty packs
			if constexpr
				(	EmptyInstance
					<	decltype(
							i_vPack
						)
					>
				)
			{
				return
					false
				;
			}
			else
				return
					Apply
					(	Transform
						(	i_vPack
						,	i_fPredicate
						)
					,	Fold::LeftLogicalOr
					)
				;
		}
	};

	AnyFunc constexpr inline
		Any
	{};

	///	checks if the given info object is contained within the pack
	struct
		[[nodiscard]]
		ContainsFunc
	{
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	Instance auto
					i_vPack
			,	Meta::InfoInstance auto
					i_vContained
			)	const
		noexcept
		->	bool
		{	return
				Any
				(	i_vPack
				,	Stateless::BackBinding
					{	Meta::StatelessEquals
					,	i_vContained
					}
				)
			;
		}
	};

	ContainsFunc constexpr inline Contains
	{};
}

static_assert(Pack::All(Meta::Pack<1,1,1>(), Stateless::BackBinding{Meta::StatelessEquals, Meta::V<1>}));
static_assert(Pack::Any(Meta::Pack<3,2,1>(), Stateless::BackBinding{Meta::StatelessEquals, Meta::V<1>}));
static_assert(Pack::Contains(Meta::Pack<3,2,1>(), Meta::V<1>));
