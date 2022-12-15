export module Meta.Functional:Fold;

export import :Fold.Fold;
export import :FoldDirection;
export import :Key;

import Std;

export namespace
	Meta
{
	template
		<	typename
				t_tFold
		,	typename
			...	t_tpArgument
		>
	concept
		ProtoFoldable
	=	Functional::ProtoFold
		<	t_tFold
		>
	and	requires
			(	t_tpArgument
				&&
				...	c_rpArgument
			)
		{	Functional::DoFold
			(	Functional::FoldTraits<t_tFold>::Token
			,	std::declval<t_tpArgument>()
				...
			);
		}
	;

	template
		<	Functional::ProtoFold
				t_tFold
		,	typename
			...	t_tpArgument
		>
	auto constexpr inline
		IsNoexceptFold
	=	noexcept
		(	Functional::DoFold
			(	Functional::FoldTraits<t_tFold>::Token
			,	std::declval<t_tpArgument>()
				...
			)
		)
	;

	template
		<	Functional::FoldKey
				t_vKey
		,	Functional::EFoldDirection
				t_eDirection
			=	Functional::LeftFold
		>
	struct
		Fold
	{
		static Functional::FoldToken<t_vKey, t_eDirection> constexpr
			Token
		{};

		static auto constexpr
		(	operator()
		)	(	auto&&
				...	i_rpArgument
			)
			noexcept
			(	IsNoexceptFold
				<	Fold
				,	decltype(i_rpArgument)
					...
				>
			)
		->	decltype(auto)
			requires
				ProtoFoldable
				<	Fold
				,	decltype(i_rpArgument)
					...
				>
		{	return
			Functional::DoFold
			(	Token
			,	std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			);
		}

		template
			<	typename
					t_tFunction
			>
		explicit(true) constexpr
		(	operator t_tFunction
		)	()	const
		{	return &operator();	}
	};
}
