export module Fold.LogicalOr;

export namespace
	Fold
{
	/// function-object performing a right to left fold over operator ||
	struct
		[[nodiscard]]
		RightLogicalOrFunc
	{
		[[nodiscard]]
		auto constexpr
			operator()
			(	auto&&
				...	i_rpArgument
			)	const
		->	decltype(auto)
		{	return
			(	static_cast<decltype(i_rpArgument)>
				(	i_rpArgument
				)
			or	...
			);
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
		auto constexpr
			operator()
			(	auto&&
				...	i_rpElement
			)	const
		->	decltype(auto)
		{	return
			(	...
			or	static_cast<decltype(i_rpElement)>
				(	i_rpElement
				)
			);
		}
	};

	LeftLogicalOrFunc constexpr inline
		LeftLogicalOr
	{};
}
