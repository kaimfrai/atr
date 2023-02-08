export module Meta.Lex.OwnedFunctionTokenizer;

import Meta.Lex.Function.Const;
import Meta.Lex.Function.ConstLRef;
import Meta.Lex.Function.ConstLRefNoexcept;
import Meta.Lex.Function.ConstNoexcept;
import Meta.Lex.Function.ConstRRef;
import Meta.Lex.Function.ConstRRefNoexcept;
import Meta.Lex.Function.ConstVolatile;
import Meta.Lex.Function.ConstVolatileLRef;
import Meta.Lex.Function.ConstVolatileLRefNoexcept;
import Meta.Lex.Function.ConstVolatileNoexcept;
import Meta.Lex.Function.ConstVolatileRRef;
import Meta.Lex.Function.ConstVolatileRRefNoexcept;
import Meta.Lex.Function.LRef;
import Meta.Lex.Function.LRefNoexcept;
import Meta.Lex.Function.RRef;
import Meta.Lex.Function.RRefNoexcept;
import Meta.Lex.Function.Volatile;
import Meta.Lex.Function.VolatileLRef;
import Meta.Lex.Function.VolatileLRefNoexcept;
import Meta.Lex.Function.VolatileNoexcept;
import Meta.Lex.Function.VolatileRRef;
import Meta.Lex.Function.VolatileRRefNoexcept;
import Meta.Lex.Match;

export namespace
	Meta::Lex
{
	using
		OwnedFunctionTokenizer
	=	Match
		<	Function::Const
		,	Function::ConstLRef
		,	Function::ConstLRefNoexcept
		,	Function::ConstNoexcept
		,	Function::ConstRRef
		,	Function::ConstRRefNoexcept
		,	Function::ConstVolatile
		,	Function::ConstVolatileLRef
		,	Function::ConstVolatileLRefNoexcept
		,	Function::ConstVolatileNoexcept
		,	Function::ConstVolatileRRef
		,	Function::ConstVolatileRRefNoexcept
		,	Function::LRef
		,	Function::LRefNoexcept
		,	Function::RRef
		,	Function::RRefNoexcept
		,	Function::Volatile
		,	Function::VolatileLRef
		,	Function::VolatileLRefNoexcept
		,	Function::VolatileNoexcept
		,	Function::VolatileRRef
		,	Function::VolatileRRefNoexcept
		>
	;
}
