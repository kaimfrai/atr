export module Meta.ID.Make;

import Meta.ID.UpperCase;
import Meta.ID.LowerCase;
import Meta.ID.Decimal;
import Meta.ID.Template;
import Meta.ID.StringLiteral;

import Meta.Token.Index;
import Meta.Token.Sequence;
import Meta.Size;

export
{
	template
		<	char
				t_nCharacter
		>
	auto constexpr
	(	FromChar
	)	(	Meta::IndexToken<t_nCharacter>
		)
	->	char
	{	return t_nCharacter;	}

	/// dispatches a string literal into its characters
	///	creates an instance of the given identifer template with all dispatched characters inserted
	template
		<	Meta::StringLiteral
				t_vStringLiteral
		,	Meta::USize
			...	t_npIndex
		>
	auto constexpr
	(	Make
	)	(	Meta::IndexToken
			<	t_npIndex
				...
			>
		)
	->	::Meta::ID
		<	::FromChar
			(	Meta::IndexToken
				<	t_vStringLiteral
					[	t_npIndex
					]
				>{}
			)
			...
		>
	{	return{};	}
}