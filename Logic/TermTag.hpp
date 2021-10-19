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
	:	6
		=	IsLiteral
	;
};
