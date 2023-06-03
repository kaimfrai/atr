export module Evaluation.Dependency.MakeUniqueNoexcept;

import Std;

export
{
	template
		<	typename
				t_tElement
		>
	auto constexpr
	(	MakeUniqueNoexcept
	)	()
		noexcept
	->	::std::unique_ptr<t_tElement>
	{
		t_tElement
		*	aElement
		=	new	(	::std::nothrow
				)
			t_tElement
			{}
		;
		return
		::std::unique_ptr<t_tElement>
		{	aElement
		};
	}
}
