export module Meta.Lex.OwnedEllipsisFunctionTokenizer;

import Meta.Lex.Function.EllipsisConst;
import Meta.Lex.Function.EllipsisConstLRef;
import Meta.Lex.Function.EllipsisConstLRefNoexcept;
import Meta.Lex.Function.EllipsisConstNoexcept;
import Meta.Lex.Function.EllipsisConstRRef;
import Meta.Lex.Function.EllipsisConstRRefNoexcept;
import Meta.Lex.Function.EllipsisConstVolatile;
import Meta.Lex.Function.EllipsisConstVolatileLRef;
import Meta.Lex.Function.EllipsisConstVolatileLRefNoexcept;
import Meta.Lex.Function.EllipsisConstVolatileNoexcept;
import Meta.Lex.Function.EllipsisConstVolatileRRef;
import Meta.Lex.Function.EllipsisConstVolatileRRefNoexcept;
import Meta.Lex.Function.EllipsisLRef;
import Meta.Lex.Function.EllipsisLRefNoexcept;
import Meta.Lex.Function.EllipsisRRef;
import Meta.Lex.Function.EllipsisRRefNoexcept;
import Meta.Lex.Function.EllipsisVolatile;
import Meta.Lex.Function.EllipsisVolatileLRef;
import Meta.Lex.Function.EllipsisVolatileLRefNoexcept;
import Meta.Lex.Function.EllipsisVolatileNoexcept;
import Meta.Lex.Function.EllipsisVolatileRRef;
import Meta.Lex.Function.EllipsisVolatileRRefNoexcept;
import Meta.Lex.Match;

export namespace
	Meta::Lex
{
	using
		OwnedEllipsisFunctionTokenizer
	=	Match
		<	Function::EllipsisConst
		,	Function::EllipsisConstLRef
		,	Function::EllipsisConstLRefNoexcept
		,	Function::EllipsisConstNoexcept
		,	Function::EllipsisConstRRef
		,	Function::EllipsisConstRRefNoexcept
		,	Function::EllipsisConstVolatile
		,	Function::EllipsisConstVolatileLRef
		,	Function::EllipsisConstVolatileLRefNoexcept
		,	Function::EllipsisConstVolatileNoexcept
		,	Function::EllipsisConstVolatileRRef
		,	Function::EllipsisConstVolatileRRefNoexcept
		,	Function::EllipsisLRef
		,	Function::EllipsisLRefNoexcept
		,	Function::EllipsisRRef
		,	Function::EllipsisRRefNoexcept
		,	Function::EllipsisVolatile
		,	Function::EllipsisVolatileLRef
		,	Function::EllipsisVolatileLRefNoexcept
		,	Function::EllipsisVolatileNoexcept
		,	Function::EllipsisVolatileRRef
		,	Function::EllipsisVolatileRRefNoexcept
		>
	;
}
