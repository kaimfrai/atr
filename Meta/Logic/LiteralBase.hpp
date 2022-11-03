export module Meta.Logic:LiteralBase;

export import Meta.Token;

import std;

export namespace
	Meta::Trait
{
	template
		<	typename
				t_tLiteral
		>
	struct
		Not final
	{
		t_tLiteral
			Literal
			[[no_unique_address]]
		;

		friend auto constexpr
		(	Evaluate
		)	(	Not
					i_vNot
			,	EraseTypeToken
					i_vType
			)
		->	bool
		{	return not Evaluate(i_vNot.Literal, i_vType);	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
					i_vType
			)	const
		->	bool
		{	return not Literal(i_vType);	}

		friend auto constexpr
		(	operator not
		)	(	Not
					i_vNot
			)
		->	t_tLiteral
		{	return i_vNot.Literal;	}
	};

	struct
		LiteralBase
	{
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	EraseTypeToken
			)
		->	bool
		{	return false;	}

		auto constexpr
		(	operator()
		)	(	EraseTypeToken
			)	const
		->	bool
		{	return false;	}

		template
			<	::std::derived_from<LiteralBase>
					t_tLiteral
			>
		friend auto constexpr
		(	operator not
		)	(	t_tLiteral
					i_vLiteral
			)
		->	Not<t_tLiteral>
		{	return { i_vLiteral };	}
	};

	Not<LiteralBase> extern
		Tautology
	;

	LiteralBase extern
		Contradiction
	;
}
