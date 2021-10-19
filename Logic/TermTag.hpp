#pragma once

struct
	TermTag
{};

struct
	ClauseTag
:	TermTag
{};

struct
	LiteralTag
:	ClauseTag
{};

struct
	ConstantTag
:	LiteralTag
{};
