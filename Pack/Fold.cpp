export module Pack.Fold;

export import Meta.Concept.Category;
export import Pack.Instance;
export import Pack.Normalize;
export import Fold.Comma;

export namespace
	Pack
{
	/// wraps around an operation and stores a result
	/// to be invoked repeatedly within a fold expression
	///	implicitly decays to the result
	template
		<	Meta::ProtoValue
				t_tFoldOperation
		,	Meta::ProtoValue
				t_tFoldResult
		>
	struct
		FoldTag
	{
		[[no_unique_address]]
		t_tFoldOperation
			FoldOperation
		;
		[[no_unique_address]]
		t_tFoldResult
			FoldResult
		;

		///	invoke the fold operation and update the result
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	auto&&
					i_rArgument
			)	const
		->	decltype(auto)
		{	return
			Pack::FoldTag
			{	FoldOperation
			,	FoldOperation
				(	FoldResult
				,	static_cast<decltype(i_rArgument)>
					(	i_rArgument
					)
				)
			};
		}

		///	used to fold from left to right, maps to the call operator
		[[nodiscard]]
		friend auto constexpr
		(	operator,
		)	(	FoldTag const
				&	i_rFoldTag
			,	auto&&
					i_rArgument
			)
		->	decltype(auto)
		{	return
			i_rFoldTag
			(	static_cast<decltype(i_rArgument)>
				(	i_rArgument
				)
			);
		}

		///	used to fold from right to left, maps to the call operator
		[[nodiscard]]
		friend auto constexpr
			operator,
			(	auto&&
					i_rArgument
			,	FoldTag const
				&	i_rFoldTag
			)
		->	decltype(auto)
		{	return
			i_rFoldTag
			(	static_cast<decltype(i_rArgument)>
				(	i_rArgument
				)
			);
		}
	};

	template
		<	Meta::ProtoValue
				t_tFoldOperation
		,	Meta::ProtoValue
				t_tFoldResult
		>
	(	FoldTag
	)	(	t_tFoldOperation
		,	t_tFoldResult
		)
	->	FoldTag
		<	t_tFoldOperation
		,	t_tFoldResult
		>
	;

	///	folds all info objects from right to left
	[[nodiscard]]
	auto constexpr
		FoldRight
		(	Instance auto
				i_vPack
		,	auto&&
				i_rFoldOperation
		,	auto&&
				i_rFoldInit
		)
	->	decltype(auto)
	{
		auto const
			vFolder
		=	Fold::RightCommaFunc
			{	FoldTag
				{	i_rFoldOperation
				,	i_rFoldInit
				}
			}
		;

		return
			Normalize
			(	i_vPack
			)
		.	ApplyTo
			(	vFolder
			)
		.	FoldResult
		;
	}

	///	folds all info objects from left to right
	[[nodiscard]]
	auto constexpr
		FoldLeft
		(	Instance auto
				i_vPack
		,	auto&&
				i_rFoldOperation
		,	auto&&
				i_rFoldInit
		)
	->	decltype(auto)
	{
		auto const
			vFolder
		=	Fold::LeftCommaFunc
			{	FoldTag
				{	i_rFoldOperation
				,	i_rFoldInit
				}
			}
		;

		return
			Normalize
			(	i_vPack
			)
		.	ApplyTo
			(	vFolder
			)
		.	FoldResult
		;
	}
}
