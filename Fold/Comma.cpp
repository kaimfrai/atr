export module Fold.Comma;

export import Stateless.Type;

export namespace
	Fold
{
	/// function-object performing a right to left fold over operator ,
	struct
		[[nodiscard]]
		RightCommaFunc
	{
		[[nodiscard]]
		constexpr
		Stateless::Type auto
			operator()
			(	Stateless::Type auto
				...	i_vpElement
			)	const
		{	return
				(	i_vpElement
				,	...
				)
			;
		}
	};
	RightCommaFunc constexpr inline
		RightComma
	{};

	/// function-object performing a left to right fold over operator ,
	struct
		[[nodiscard]]
		LeftCommaFunc
	{
		[[nodiscard]]
		constexpr
		Stateless::Type auto
			operator()
			(	Stateless::Type auto
				...	i_vpElement
			)	const
		{	return
				(	...
				,	i_vpElement
				)
			;
		}
	};

	LeftCommaFunc constexpr inline
		LeftComma
	{};
}
