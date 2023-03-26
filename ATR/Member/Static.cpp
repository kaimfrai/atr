export module ATR.Member.Static;

export namespace
	ATR::Member
{
	template
		<	typename
				t_tMember
		>
	struct
		Static
	{
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	()
			noexcept
		->	t_tMember
		{	return
			t_tMember
			();
		}
	};
}
