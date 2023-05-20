export module Meta.String.ID;

import Meta.String.Decimal;
import Meta.String.LowerCase;
import Meta.String.Chain;
import Meta.String.Literal;
import Meta.String.UpperCase;
import Meta.Size;
import Meta.Token.Index;

import Std;

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

		static StringLiteral<Length> const constexpr
		&	String
		=	StringInstance
			<	StringLiteral<Length>
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
			StringLiteral<Length> const
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
			StringChain
		)	()	const
			noexcept
		{	return
			{	String
				.	Buffer
			};
		}
	};
}
