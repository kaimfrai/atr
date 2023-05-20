export module Meta.ID:ID;

import :Base;
import :Decimal;
import :Default;
import :LowerCase;
import :UpperCase;

import Meta.String.Chain;

using ::Meta::String::Chain;

/// serves as a base class for all identifer types
/// provides conversions to arrays as well as begin and end functions
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
