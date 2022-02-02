export module Pack.Apply;

export import Pack.Fold;
export import Pack.Normalize;
export import Pack.Instance;
export import Meta.TupleList;

export namespace
	Pack
{
	/// calls the function with all elements of the pack
	struct
		Applicator
	{
		/// applies all elements in the pack to the given function and returns the result
		/// note that the final result may not be a pack but every intermediate result in a fold expression has to be
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Instance auto
					i_vPreviousResult
			,	auto&&
					i_rApplicable
			)	const
		{	return
			Invoke
			(	static_cast<decltype(i_rApplicable)>
				(	i_rApplicable
				)
			,	Normalize
				(	i_vPreviousResult
				)
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Instance auto
					i_vPack
			,	auto&&
				...	i_rpApplicable
			)	const
		{	return
			FoldLeft
			(	Meta::TupleList
				{	static_cast<decltype(i_rpApplicable)>
					(	i_rpApplicable
					)
					...
				}
			,	*this
			,	i_vPack
			);
		}
	};

	/// forwards the individual elements of the pack to the given objects in sequence
	Applicator constexpr inline
		Apply
	{};
}
