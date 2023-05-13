export module Meta.ID.Template;

import Meta.ID.Decimal;
import Meta.ID.LowerCase;
import Meta.ID.StringChain;
import Meta.ID.StringLiteral;
import Meta.ID.UpperCase;
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
				{	::ToChar(t_vpString)
					...
				,	'\0'
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
			StringView
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
