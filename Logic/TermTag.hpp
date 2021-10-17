#pragma once

struct
	TermTag final
{
	bool const
		IsConstant
	:	1
		=	false
	;
	bool const
		IsLiteral
	:	1
		=	IsConstant
	;
	bool const
		IsClause
	:	1
		=	IsLiteral
	;
	bool const
		IsConjunction
	:	1
		=	IsLiteral
	;
	bool const
		IsDisjunction
	:	1
		=	IsLiteral
	;
	bool const
		IsConjunctive
	:	1
		=	IsClause
		or	IsConjunction
	;
	bool const
		IsDisjunctive
	:	1
		=	IsClause
		or	IsDisjunction
	;
	bool const
		IsNested
	:	1
		=	not
			IsClause
	;
};
