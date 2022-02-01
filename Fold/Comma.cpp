export module Fold.Comma;

export namespace
	Fold
{
	/// function-object performing a right to left fold over operator ,
	template
		<	typename
				t_tInitial
		>
	struct
		[[nodiscard]]
		RightCommaFunc
	{
		[[no_unique_address]]
		t_tInitial
			Initial
		;

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
			,	Initial
			);
		}
	};

	template
		<>
	struct
		[[nodiscard]]
		RightCommaFunc
		<	void
		>
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

	template
		<	typename
				t_tInitial
		>
	(	RightCommaFunc
	)	(	t_tInitial&&
		)
	->	RightCommaFunc
		<	t_tInitial
		>
	;

	RightCommaFunc<void> constexpr inline
		RightComma
	{};

	/// function-object performing a left to right fold over operator ,
	template
		<	typename
				t_tInitial
		>
	struct
		[[nodiscard]]
		LeftCommaFunc
	{
		[[no_unique_address]]
		t_tInitial
			Initial
		;

		[[nodiscard]]
		auto constexpr
			operator()
			(	auto&&
				...	i_rpArgument
			)	const
		->	decltype(auto)
		{	return
			(	Initial
			,	...
			,	static_cast<decltype(i_rpArgument)>
				(	i_rpArgument
				)
			);
		}
	};

	/// function-object performing a left to right fold over operator ,
	template
		<>
	struct
		[[nodiscard]]
		LeftCommaFunc
		<	void
		>
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

	template
		<	typename
				t_tInitial
		>
	(	LeftCommaFunc
	)	(	t_tInitial&&
		)
	->	LeftCommaFunc
		<	t_tInitial
		>
	;

	LeftCommaFunc<void> constexpr inline
		LeftComma
	{};
}
