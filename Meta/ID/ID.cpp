export module Meta.ID:ID;

import :Decimal;
import :LowerCase;
import :UpperCase;

import Meta.Size;
import Meta.String.Chain;
import Meta.String.Literal;
import Meta.Token.Index;

import Std;

using ::Meta::String::Chain;
using ::Meta::String::Instance;
using ::Meta::String::Literal;

auto constexpr
(	ToChar
)	(	char
			i_cChar
	)
->	char
{	return i_cChar;	}

export template
	<	char
			t_nCharacter
	>
auto constexpr
(	FromChar
)	(	Meta::IndexToken<t_nCharacter>
	)
->	char
{	return t_nCharacter;	}

export namespace
	Meta
{
	/// serves as a base class for all identifer types
	/// provides conversions to arrays as well as begin and end functions
	template
		<	decltype(auto)
			...	t_vpString
		>
	struct
		ID final
	{
		static USize constexpr
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
}
