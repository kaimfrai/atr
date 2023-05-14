import Meta.ID.StringChain;
import Meta.ID.StringLiteral;

import Std;

using ::Meta::StringChain;
using ::Meta::StringInstance;

StringChain constexpr
	Empty
{};

static_assert
(	Empty
==	Empty
);
static_assert
(	::std::is_eq
	(	Empty
	<=>	Empty
	)
);

StringChain constexpr
	ABC
{	StringInstance<"ABC">.Buffer
};

static_assert
(	ABC
==	ABC
);
static_assert
(	::std::is_eq
	(	ABC
	<=>	ABC
	)
);

static_assert
(	Empty
!=	ABC
);
static_assert
(	ABC
!=	Empty
);
static_assert
(	::std::is_lt
	(	Empty
	<=>	ABC
	)
);
static_assert
(	::std::is_gt
	(	ABC
	<=>	Empty
	)
);

StringChain constexpr
	ABCDE
{	StringInstance<"ABCDE">.Buffer
};

static_assert
(	ABCDE
==	ABCDE
);
static_assert
(	::std::is_eq
	(	ABCDE
	<=>	ABCDE
	)
);

static_assert
(	Empty
!=	ABCDE
);
static_assert
(	ABCDE
!=	Empty
);
static_assert
(	::std::is_lt
	(	Empty
	<=>	ABCDE
	)
);
static_assert
(	::std::is_gt
	(	ABCDE
	<=>	Empty
	)
);

static_assert
(	ABC
!=	ABCDE
);
static_assert
(	ABCDE
!=	ABC
);
static_assert
(	::std::is_lt
	(	ABC
	<=>	ABCDE
	)
);
static_assert
(	::std::is_gt
	(	ABCDE
	<=>	ABC
	)
);

StringChain constexpr
	DE
{	StringInstance<"DE">.Buffer
};

static_assert
(	DE
==	DE
);
static_assert
(	::std::is_eq
	(	DE
	<=>	DE
	)
);

static_assert
(	Empty
!=	DE
);
static_assert
(	DE
!=	Empty
);
static_assert
(	::std::is_lt
	(	Empty
	<=>	DE
	)
);
static_assert
(	::std::is_gt
	(	DE
	<=>	Empty
	)
);

static_assert
(	ABC
!=	DE
);
static_assert
(	DE
!=	ABC
);
static_assert
(	::std::is_lt
	(	ABC
	<=>	DE
	)
);
static_assert
(	::std::is_gt
	(	DE
	<=>	ABC
	)
);

static_assert
(	ABCDE
!=	DE
);
static_assert
(	DE
!=	ABCDE
);
static_assert
(	::std::is_lt
	(	ABCDE
	<=>	DE
	)
);
static_assert
(	::std::is_gt
	(	DE
	<=>	ABCDE
	)
);

StringChain constexpr
	ABC_DE
=	(	ABC.Value
	+	DE
	)
;

static_assert
(	ABC_DE
==	ABC_DE
);
static_assert
(	::std::is_eq
	(	ABC_DE
	<=>	ABC_DE
	)
);

static_assert
(	Empty
!=	ABC_DE
);
static_assert
(	ABC_DE
!=	Empty
);
static_assert
(	::std::is_lt
	(	Empty
	<=>	ABC_DE
	)
);
static_assert
(	::std::is_gt
	(	ABC_DE
	<=>	Empty
	)
);

static_assert
(	ABC
!=	ABC_DE
);
static_assert
(	ABC_DE
!=	ABC
);
static_assert
(	::std::is_lt
	(	ABC
	<=>	ABC_DE
	)
);
static_assert
(	::std::is_gt
	(	ABC_DE
	<=>	ABC
	)
);

static_assert
(	ABCDE
==	ABC_DE
);
static_assert
(	ABC_DE
==	ABCDE
);
static_assert
(	::std::is_eq
	(	ABCDE
	<=>	ABC_DE
	)
);
static_assert
(	::std::is_eq
	(	ABC_DE
	<=>	ABCDE
	)
);

static_assert
(	DE
!=	ABC_DE
);
static_assert
(	ABC_DE
!=	DE
);
static_assert
(	::std::is_gt
	(	DE
	<=>	ABC_DE
	)
);
static_assert
(	::std::is_lt
	(	ABC_DE
	<=>	DE
	)
);

StringChain constexpr
	Empty_DE
=	(	Empty.Value
	+	DE
	)
;

static_assert
(	Empty_DE
==	Empty_DE
);
static_assert
(	::std::is_eq
	(	Empty_DE
	<=>	Empty_DE
	)
);

static_assert
(	Empty
!=	Empty_DE
);
static_assert
(	Empty_DE
!=	Empty
);
static_assert
(	::std::is_lt
	(	Empty
	<=>	Empty_DE
	)
);
static_assert
(	::std::is_gt
	(	Empty_DE
	<=>	Empty
	)
);

static_assert
(	ABC
!=	Empty_DE
);
static_assert
(	Empty_DE
!=	ABC
);
static_assert
(	::std::is_lt
	(	ABC
	<=>	Empty_DE
	)
);
static_assert
(	::std::is_gt
	(	Empty_DE
	<=>	ABC
	)
);

static_assert
(	ABCDE
!=	Empty_DE
);
static_assert
(	Empty_DE
!=	ABCDE
);
static_assert
(	::std::is_lt
	(	ABCDE
	<=>	Empty_DE
	)
);
static_assert
(	::std::is_gt
	(	Empty_DE
	<=>	ABCDE
	)
);

static_assert
(	DE
==	Empty_DE
);
static_assert
(	Empty_DE
==	DE
);
static_assert
(	::std::is_eq
	(	DE
	<=>	Empty_DE
	)
);
static_assert
(	::std::is_eq
	(	Empty_DE
	<=>	DE
	)
);

static_assert
(	ABC_DE
!=	Empty_DE
);
static_assert
(	Empty_DE
!=	ABC_DE
);
static_assert
(	::std::is_lt
	(	ABC_DE
	<=>	Empty_DE
	)
);
static_assert
(	::std::is_gt
	(	Empty_DE
	<=>	ABC_DE
	)
);

StringChain constexpr
	ABC_Empty_DE
=	(	ABC.Value
	+	Empty_DE
	)
;

static_assert
(	ABC_Empty_DE
==	ABC_Empty_DE
);
static_assert
(	::std::is_eq
	(	ABC_Empty_DE
	<=>	ABC_Empty_DE
	)
);

static_assert
(	Empty
!=	ABC_Empty_DE
);
static_assert
(	ABC_Empty_DE
!=	Empty
);
static_assert
(	::std::is_lt
	(	Empty
	<=>	ABC_Empty_DE
	)
);
static_assert
(	::std::is_gt
	(	ABC_Empty_DE
	<=>	Empty
	)
);

static_assert
(	ABC
!=	ABC_Empty_DE
);
static_assert
(	ABC_Empty_DE
!=	ABC
);
static_assert
(	::std::is_lt
	(	ABC
	<=>	ABC_Empty_DE
	)
);
static_assert
(	::std::is_gt
	(	ABC_Empty_DE
	<=>	ABC
	)
);

static_assert
(	ABCDE
==	ABC_Empty_DE
);
static_assert
(	ABC_Empty_DE
==	ABCDE
);
static_assert
(	::std::is_eq
	(	ABCDE
	<=>	ABC_Empty_DE
	)
);
static_assert
(	::std::is_eq
	(	ABC_Empty_DE
	<=>	ABCDE
	)
);

static_assert
(	DE
!=	ABC_Empty_DE
);
static_assert
(	ABC_Empty_DE
!=	DE
);
static_assert
(	::std::is_gt
	(	DE
	<=>	ABC_Empty_DE
	)
);
static_assert
(	::std::is_lt
	(	ABC_Empty_DE
	<=>	DE
	)
);

static_assert
(	ABC_DE
==	ABC_Empty_DE
);
static_assert
(	ABC_Empty_DE
==	ABC_DE
);
static_assert
(	::std::is_eq
	(	ABC_DE
	<=>	ABC_Empty_DE
	)
);
static_assert
(	::std::is_eq
	(	ABC_Empty_DE
	<=>	ABC_DE
	)
);

static_assert
(	Empty_DE
!=	ABC_Empty_DE
);
static_assert
(	ABC_Empty_DE
!=	Empty_DE
);
static_assert
(	::std::is_gt
	(	Empty_DE
	<=>	ABC_Empty_DE
	)
);
static_assert
(	::std::is_lt
	(	ABC_Empty_DE
	<=>	Empty_DE
	)
);
