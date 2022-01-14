export module Fold.LogicalAnd;

export import Stateless.Type;

export namespace
	Fold
{
	/// function-object performing a right to left fold over operator &&
	constexpr
	struct
		[[nodiscard]]
		RightLogicalAndFunc
	{
		[[nodiscard]]
		constexpr
		Stateless::Type auto
			operator()
			(	Stateless::Type auto
				...	i_rpElement
			)
		{	return
				(	i_rpElement
				&&	...
				)
			;
		}
	}	RightLogicalAnd
	{};

	/// function-object performing a left to right fold over operator &&
	constexpr
	struct
		[[nodiscard]]
		LeftLogicalAndFunc
	{
		[[nodiscard]]
		constexpr
		Stateless::Type auto
			operator()
			(	Stateless::Type auto
				...	i_rpElement
			)
		{	return
				(	...
				&&	i_rpElement
				)
			;
		}
	}	LeftLogicalAnd
	{};
}
