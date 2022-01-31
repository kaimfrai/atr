export module Fold.LogicalOr;

export import Stateless.Type;

export namespace
	Fold
{
	/// function-object performing a right to left fold over operator ||
	struct
		[[nodiscard]]
		RightLogicalOrFunc
	{
		[[nodiscard]]
		constexpr
		Stateless::Type auto
			operator()
			(	Stateless::Type auto
				...	i_rpElement
			)
		{
			return
				(	i_rpElement
				||	...
				)
			;
		}
	};

	RightLogicalOrFunc constexpr inline
		RightLogicalOr
	{};

	/// function-object performing a left to right fold over operator ||
	struct
		[[nodiscard]]
		LeftLogicalOrFunc
	{
		[[nodiscard]]
		constexpr
		Stateless::Type auto
			operator()
			(	Stateless::Type auto
				...	i_rpElement
			)
		{
			return
				(	...
				||	i_rpElement
				)
			;
		}
	};

	LeftLogicalOrFunc constexpr inline
		LeftLogicalOr
	{};
}
