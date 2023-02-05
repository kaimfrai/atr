export module ATR.Layout.Static;

export namespace
	ATR
{
	template
		<	typename
				t_tMember
		>
	struct
		StaticMember
	{
		[[nodiscard]]
		static auto constexpr
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
