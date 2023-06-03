export module Meta.Functional.Fold;

import Meta.Functional.FoldDirection;
import Meta.Functional.Key;
import Meta.Functional.FoldTraits;

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
		{	DoFold
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
		(	DoFold
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
		Functional::FoldToken<t_vKey, t_eDirection> static constexpr inline
			Token
		{};

		auto static constexpr inline
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
			DoFold
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
		explicit(true) constexpr inline
		(	operator
			t_tFunction
		)	()	const
		{	return &operator();	}
	};
}
