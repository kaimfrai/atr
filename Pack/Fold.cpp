export module Pack.Fold;

export import PackTemplate.Instance;
export import Meta.MetaInfo;
export import Stateless.Binding;
export import Fold.Comma;

export namespace
	Pack
{
	/// wraps around an operation and stores a result
	/// to be invoked repeatedly within a fold expression
	///	implicitly decays to the result
	template
		<	Stateless::Type
				t_tFoldOperation
		,	Stateless::Type
				t_tFoldResult
		>
	struct
		FoldTag
		{
			///	default constructor
			constexpr
				FoldTag
				()
			=	default
			;

			///	deduce template from arguments
			constexpr
			explicit
				FoldTag
				(	t_tFoldOperation
				,	t_tFoldResult
				)
			{}

			static t_tFoldOperation constexpr
				FoldOperation
			{};

			static t_tFoldResult constexpr
				FoldResult
			{};

			///	invoke the fold operation and update the result
			[[nodiscard]]
			constexpr
			PackTemplate::TypeInstanceOf
			<	FoldTag
			>	auto
				operator()
				(	Stateless::Type auto
						i_vArgument
				)	const
			{
				return
					Pack::FoldTag
					{	FoldOperation
					,	FoldOperation
						(	FoldResult
						,	i_vArgument
						)
					}
				;
			}

			///	used to fold from left to right, maps to the call operator
			[[nodiscard]]
			friend
			constexpr
			Stateless::Type auto
				operator,
				(	FoldTag
						i_fFoldTag
				,	Stateless::Type auto
						i_vArgument
				)
			{	return
					i_fFoldTag
					(	i_vArgument
					)
				;
			}

			///	used to fold from right to left, maps to the call operator
			[[nodiscard]]
			friend
			constexpr
			Stateless::Type auto
				operator,
				(	Stateless::Type auto
						i_vArgument
				,	FoldTag
						i_fFoldTag
				)
			{
				return
					i_fFoldTag
					(	i_vArgument
					)
				;
			}
		}
	;

	template
		<	Stateless::Type
				t_tFoldOperation
		,	Stateless::Type
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
	constexpr
	Stateless::Type auto
		FoldRight
		(	Instance auto
				i_vPack
		,	Stateless::Type auto
				t_fFoldOperation
		,	Stateless::Type auto
				t_fFoldInit
		)
	{
		Stateless::Type auto
		const
			vFoldStart
		=	FoldTag
			{	t_fFoldOperation
			,	t_fFoldInit
			}
		;
		Stateless::Type auto
		const
			vFolder
		=	Stateless::BackBinding
			{	Fold::RightComma
			,	vFoldStart
			}
		;

		return
			Normalize
			(	i_vPack
			).	ApplyTo
				(	vFolder
				)
			.	FoldResult
		;
	}

	///	folds all info objects from left to right
	[[nodiscard]]
	Stateless::Type auto constexpr
		FoldLeft
		(	Instance auto
				i_vPack
		,	Stateless::Type auto
				t_fFoldOperation
		,	Stateless::Type auto
				t_fFoldInit
		)
	{
		Stateless::Type auto
		const
			vFoldStart
		=	FoldTag
			{	t_fFoldOperation
			,	t_fFoldInit
			}
		;
		Stateless::Type auto
		const
			vFolder
		=	Stateless::FrontBinding
			{	Fold::LeftComma
			,	vFoldStart
			}
		;

		return
			Normalize
			(	i_vPack
			).	ApplyTo
				(	vFolder
				)
			.	FoldResult
		;
	}
}
