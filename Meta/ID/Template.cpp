export module Meta.ID.Template;

import Meta.ID.UpperCase;
import Meta.ID.LowerCase;
import Meta.ID.Decimal;
import Meta.ID.StringLiteral;

import Meta.Token.Index;
import Meta.Size;

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
		template
			<	char
				...	t_vpSuffix
			>
		using
			Append
		=	ID
			<	(t_vpString)
				...
			,	::FromChar
				(	Meta::IndexToken
					<	t_vpSuffix
					>{}
				)
				...
			>
		;

		static USize constexpr
			Length
		=	sizeof...(t_vpString)
		;

		static StringLiteral<Length> constexpr
			String
		{	::ToChar(t_vpString)
			...
		,	'\0'
		};

		[[nodiscard]]
		explicit(false) constexpr
		(	operator
			StringLiteral<Length>
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
	};
}
