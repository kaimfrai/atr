export module ATR.Member.Static;

import Std;

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
		)	(	::std::byte const
				(&
				)	[]
			)
			noexcept
		->	t_tMember
		{	return
			t_tMember
			();
		}
	};
}
