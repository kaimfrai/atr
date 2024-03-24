export module ATR.Member.Constant;

export namespace
	ATR::Member
{
	template
		<	auto
				t_vValue
		>
	struct
		ConstantValue
	{
		auto static constexpr inline
			Value
		=	t_vValue
		;

		[[nodiscard]]
		explicit(false) constexpr inline
		(	operator decltype(Value) const&
		)	()	const
			noexcept
		{	return
				Value
			;
		}

		[[nodiscard]]
		explicit(false) constexpr inline
		(	operator void const*
		)	()	const
			noexcept
		{	return
			static_cast<void const*>
			(	&	Value
			);
		}
	};

	template
		<	typename
				t_tType
		>
	struct
		ConstantType
	{};

	template
		<	auto
				t_vValue
		>
	auto constexpr inline
		Constant
	=	ConstantValue
		<	t_vValue
		>{}
	;
}
