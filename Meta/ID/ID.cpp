export module Meta.ID:ID;

import :Decimal;
import :Default;
import :LowerCase;
import :UpperCase;

import Meta.String.Chain;
import Meta.String.Literal;

import Std;

using ::Meta::String::Chain;
using ::Meta::String::Instance;
using ::Meta::String::Literal;

/// serves as a base class for all identifer types
/// provides conversions to arrays as well as begin and end functions
template
	<	decltype(auto)
		...	t_vpString
	>
struct
	ID final
{
	static auto constexpr
		Length
	=	sizeof...(t_vpString)
	;

	static Literal<Length> const constexpr
	&	String
	=	Instance
		<	Literal<Length>
			{	::std::data
				({	::ToChar(t_vpString)
					...
				,	'\0'
				})
			}
		>
	;

	[[nodiscard]]
	explicit(false) constexpr
	(	operator
		Literal<Length> const
		&
	)	()	const
		noexcept
	{	return
			String
		;
	}

	[[nodiscard]]
	explicit(false) constexpr
	(	operator
		Chain
	)	()	const
		noexcept
	{	return
		{	String
			.	Buffer
		};
	}
};
