export module Pack.SplitBest;

export import Pack.Fold;
export import Pack.Concat;
export import Pack.Size;
export import Pack.Instance;
export import Pack.Apply;
export import Pack.Value;
export import Meta.Pack;

export import Std;

export import <Fold/Comma.hpp>;
export import <Stateless/Binding.hpp>;
export import <Stateless/Tuple.hpp>;

export namespace
	Pack
{
	/// picks the better of two info objects using a compare function object
	/// stores the best result and the rest seperately
	template
		<	Stateless::Type
				t_tCompare
		>
	struct
		[[nodiscard]]
		SplitCompare
	{
		///	default constructor
		constexpr
			SplitCompare
			()
		=	default
		;

		///	deduce template from arguments
		constexpr
		explicit
			SplitCompare
			(	t_tCompare
			)
		{}

		static
		constexpr
		Stateless::Type auto
			CompareObject
		=	Stateless::Copy<t_tCompare>
		;

		/// initially returns a pair of an empty pack and the only value
		[[nodiscard]]
		constexpr
		Stateless::Pair auto
			operator()
			(	EmptyInstance auto
					i_vCurrentPair
			,	Meta::InfoInstance auto
					i_vArgument
			)	const
		{
			return
				Stateless::Tuple
				{	i_vCurrentPair
				,	i_vArgument
				}
			;
		}

		/// selects the best from current result and argument
		[[nodiscard]]
		constexpr
		Stateless::Pair auto
			operator()
			(	Stateless::Pair auto
					i_vCurrentPair
			,	Meta::InfoInstance auto
					i_vArgument
			)	const
		{
			Stateless::Pair auto
			const
			[	vCurrentRemaining
			,	vCurrentBest
			]=	i_vCurrentPair
			;

			//	add argument to remaining if the the current best remains the best
			if constexpr
				(	CompareObject
					(	Stateless::Copy<decltype(
							vCurrentBest
						)>
					,	Stateless::Copy<decltype(
							i_vArgument
						)>
					)
				)
			{
				return
					Stateless::Tuple
					{	Concat
						(	vCurrentRemaining
						,	i_vArgument
						)
					,	vCurrentBest
					}
				;
			}
			//	 add the current best to remaining and make the argument the new current best
			else
				return
					Stateless::Tuple
					{	Concat
						(	vCurrentRemaining
						,	vCurrentBest
						)
					,	i_vArgument
					}
				;
		}
	};

	/// picks one info object from the pack that compares better than all other
	/// returns a pair of the remaining elements and that object
	/// note that the order of the remaining elements may change
	[[nodiscard]]
	constexpr
	PairInstance auto
		SplitBest
		(	Instance auto
				i_vPack
		,	Stateless::Type auto
				i_vCompare
		)
	{
		return
			FoldLeft
			(	i_vPack
			,	SplitCompare
				{	i_vCompare
				}
			,	Meta::Pack()
			)
		;
	}

	///	picks the given amount of maximal elements by use of ::std::greater
	/// returns a pair of the remaining elements and the maximal objects
	/// note that the order of the remaining elements may change while the maximal objects will be in ascending order
	[[nodiscard]]
	constexpr
	PairInstance auto
		SplitMaximum
		(	Instance auto
				i_vPack
		)
	{
		return
			SplitBest
			(	i_vPack
			,	std::greater
				{}
			)
		;
	}

	///	picks the minimum info object by use of ::std::less
	[[nodiscard]]
	constexpr
	Meta::ValueInstance auto
		PickMaximum
		(	Instance auto
				i_vPack
		)
	{
		Stateless::Pair auto
		const
		[	vRemaining
		,	vResult
		]=	SplitMaximum
			(	i_vPack
			)
		;

		return
			vResult
		;
	}

	///	picks the given amount of minimal elements by use of ::std::less
	/// returns a pair of the remaining elements and the minimal objects
	/// note that the order of the remaining elements may change while the minimal objects will be in ascending order
	[[nodiscard]]
	constexpr
	PairInstance auto
		SplitMinimum
		(	Instance auto
				i_vPack
		)
	{
		return
			SplitBest
			(	i_vPack
			,	std::less
				{}
			)
		;
	}

	///	picks the minimum info object by use of ::std::less
	[[nodiscard]]
	constexpr
	Meta::ValueInstance auto
		PickMinimum
		(	Instance auto
				i_vPack
		)
	{
		Stateless::Pair auto
		const
		[	vRemaining
		,	vResult
		]=	SplitMinimum
			(	i_vPack
			)
		;

		return
			vResult
		;
	}
}

static_assert
	(	[]{
			Stateless::Pair auto
			const
			[	vRemaining
			,	vResult
			]=	SplitMaximum
				(	Meta::Pack<1,34,-451, 2>()
				)
			;
			return
				(	vRemaining
				==	Meta::Pack<1, -451, 2>()
				)
			and	(	vResult
				==	Meta::V<34>
				)
			;
		}()
	)
;

static_assert
	(	[]{
			Stateless::Pair auto
			const
			[	vRemaining
			,	vResult
			]=	SplitMinimum
				(	Meta::Pack<1,34,451,2>()
				)
			;
			return
				(	vRemaining
				==	Meta::Pack<34, 451, 2>()
				)
			and	(	vResult
				==	Meta::V<1>
				)
			;
		}()
	)
;
static_assert(PickMinimum(Meta::Pack<1,34,-451, 2>()) == Meta::V<-451>);
static_assert(PickMaximum(Meta::Pack<1,34,451, 2>()) == Meta::V<451>);
