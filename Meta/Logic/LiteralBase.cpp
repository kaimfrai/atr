export module Meta.Logic.LiteralBase;

export import Meta.Token.Type;

import Std;

export namespace
	Meta::Trait
{
	struct
		LiteralBase
	{
		bool
			Polarity
		=	true
		;

		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
					i_vBase
			,	EraseTypeToken
			)
		->	bool
		{	return not i_vBase.Polarity;	}

		auto constexpr
		(	operator()
		)	(	EraseTypeToken
			)	const
		->	bool
		{	return not Polarity;	}

		template
			<	typename
					t_tPolar
			>
		friend auto constexpr
		(	operator not
		)	(	t_tPolar
					i_vPolar
			)
		->	t_tPolar
		{
			i_vPolar.Polarity = not i_vPolar.Polarity;
			return i_vPolar;
		}
	};

	struct
		Constant final
	:	LiteralBase
	{
		auto constexpr
		(	operator()
		)	(	EraseTypeToken
			)	const
		->	bool
		{	return Polarity;	}
	};

	auto constexpr inline
		Tautology
	=	Constant{true}
	;

	auto constexpr inline
		Contradiction
	=	Constant{false}
	;
}
