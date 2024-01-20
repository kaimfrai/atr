export module Meta.Math.Divide;

export namespace
	Meta::Math
{
	template
		<	typename
				t_tQuotient
		,	typename
				t_tRemainder
		>
	struct
		Divide
	{
		t_tQuotient
			Quotient
		;
		t_tRemainder
			Remainder
		;

		explicit(true) constexpr inline
		(	Divide
		)	(	auto
					i_vNumerator
			,	auto
					i_vDenominator
			)
		:	Quotient
			{	i_vNumerator
			/	i_vDenominator
			}
		,	Remainder
			{	i_vNumerator
			%	i_vDenominator
			}
		{
		}

		[[nodiscard]]
		auto constexpr inline
		(	Floor
		)	()	const
			noexcept
		->	t_tQuotient
		{	return
				Quotient
			-	static_cast<t_tQuotient>
				(	Remainder
				<	t_tRemainder{}
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	Ceil
		)	()	const
			noexcept
		->	t_tQuotient
		{	return
				Quotient
			+	static_cast<t_tQuotient>
				(	Remainder
				>	t_tRemainder{}
				)
			;
		}
	};

	template
		<	typename
				t_tNumerator
		,	typename
				t_tDenominator
		>
	(	Divide
	)	(	t_tNumerator
		,	t_tDenominator
		)
	->	Divide
		<	decltype(t_tNumerator{} / t_tDenominator{})
		,	decltype(t_tNumerator{} % t_tDenominator{})
		>
	;
}
