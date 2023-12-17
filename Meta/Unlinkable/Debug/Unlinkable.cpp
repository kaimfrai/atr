export module Meta.Unlinkable;

import Std;

export namespace
	Meta
{
	[[noreturn]]
	auto inline
	(	Unlinkable
	)	(	::std::source_location
				i_vSourceLocation
			=	::std::source_location
				::	current
					()
		)
	->	void
	{	throw
			::std::runtime_error
			(	i_vSourceLocation
				.	function_name
					()
			)
		;
	}
}
