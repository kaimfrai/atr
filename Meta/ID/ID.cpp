export module Meta.ID:ID;

import :Base;
import :Decimal;
import :Default;
import :LowerCase;
import :UpperCase;

import Meta.String.Chain;

using ::Meta::String::Chain;

template
	<	decltype(auto)
		...	t_vpString
	>
struct
	ID final
:	Base
{
	[[nodiscard]]
	explicit(false) constexpr
	(	operator
		Chain
	)	()	const
		noexcept
	{	char static constexpr
			String
			[]
		{	::ToChar(t_vpString)
			...
		,	'\0'
		};

		return
		{	String
		};
	}
};
