export module Fold.LogicalAnd;

export namespace
	Fold
{
	/// function-object performing a right to left fold over operator &&
	struct
		[[nodiscard]]
		RightLogicalAndFunc
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
			and	...
			);
		}
	};

	RightLogicalAndFunc constexpr inline
		RightLogicalAnd
	{};

	/// function-object performing a left to right fold over operator &&
	struct
		[[nodiscard]]
		LeftLogicalAndFunc
	{
		[[nodiscard]]
		auto constexpr
			operator()
			(	auto&&
				...	i_rpArgument
			)	const
		->	decltype(auto)
		{	return
			(	...
			and	static_cast<decltype(i_rpArgument)>
				(	i_rpArgument
				)
			);
		}
	};

	LeftLogicalAndFunc constexpr inline
		LeftLogicalAnd
	{};
}
