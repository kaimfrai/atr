export module Fold.Comma;

export namespace
	Fold
{
	/// function-object performing a right to left fold over operator ,
	struct
		[[nodiscard]]
		RightCommaFunc
	{
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	auto&&
				...	i_rpArgument
			)	const
		->	decltype(auto)
		{	return
			(	static_cast<decltype(i_rpArgument)>
				(	i_rpArgument
				)
			,	...
			);
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
		auto constexpr
			operator()
			(	auto&&
				...	i_rpArgument
			)	const
		->	decltype(auto)
		{	return
			(	...
			,	static_cast<decltype(i_rpArgument)>
				(	i_rpArgument
				)
			);
		}
	};

	LeftCommaFunc constexpr inline
		LeftComma
	{};
}
