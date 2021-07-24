#include "LogicTest/Shared.hpp"


namespace
	Literal_X_Literal
{
	static_assert
	(	(p	and	T)
	==	(p)
	);
	static_assert
	(	(p	and	F)
	==	(F)
	);
	static_assert
	(	(p	and	p)
	==	(p)
	);
	static_assert
	(	(p	and	!p)
	==	(F)
	);
	static_assert
	(	(p	and	q)
	==	(p	and	q)
	);

	static_assert
	(	(p	*	T)
	==	(p)
	);
	static_assert
	(	(p	*	F)
	==	(F)
	);
	static_assert
	(	(p	*	p)
	==	(p)
	);
	static_assert
	(	(p	*	!p)
	==	(F)
	);
	static_assert
	(	(p	*	q)
	==	(p	and	q)
	);

	static_assert
	(	(p	or	T)
	==	(T)
	);
	static_assert
	(	(p	or	F)
	==	(p)
	);
	static_assert
	(	(p	or	p)
	==	(p)
	);
	static_assert
	(	(p	or	!p)
	==	(T)
	);
	static_assert
	(	(p	or	q)
	==	(p	or	q)
	);

	static_assert
	(	(p	+	T)
	==	(T)
	);
	static_assert
	(	(p	+	F)
	==	(p)
	);
	static_assert
	(	(p	+	p)
	==	(p)
	);
	static_assert
	(	(p	+	!p)
	==	(T)
	);
	static_assert
	(	(p	+	q)
	==	(p	or	q)
	);
}

namespace
	Literal_X_Clause
{
	static_assert
	(	(p	and	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	(p	and	(!p	and	q))
	==	(F)
	);
	static_assert
	(	(p	and	(q	and	p))
	==	(p	and	q)
	);
	static_assert
	(	(p	and	(q	and	!p))
	==	(F)
	);
	static_assert
	(	(p	and	(q	and	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	(p	and	(p	or	q))
	==	(p)
	);
	static_assert
	(	(p	and	(!p	or	q))
	==	(p	and	q)
	);
	static_assert
	(	(p	and	(q	or	p))
	==	(p)
	);
	static_assert
	(	(p	and	(q	or	!p))
	==	(p	and	q)
	);
	static_assert
	(	(p	and	(q	or	r))
	==	(p	and	(q	or	r))
	);

	static_assert
	(	(p	*	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	(p	*	(!p	and	q))
	==	(F)
	);
	static_assert
	(	(p	*	(q	and	p))
	==	(p	and	q)
	);
	static_assert
	(	(p	*	(q	and	!p))
	==	(F)
	);
	static_assert
	(	(p	*	(q	and	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	(p	*	(p	or	q))
	==	(p)
	);
	static_assert
	(	(p	*	(!p	or	q))
	==	(p	and	q)
	);
	static_assert
	(	(p	*	(q	or	p))
	==	(p)
	);
	static_assert
	(	(p	*	(q	or	!p))
	==	(p	and	q)
	);
	static_assert
	(	(p	*	(q	or	r))
	==	((p	and	q)	or	(p	and	r))
	);

	static_assert
	(	(p	or	(p	and	q))
	==	(p)
	);
	static_assert
	(	(p	or	(!p	and	q))
	==	(p	or	q)
	);
	static_assert
	(	(p	or	(q	and	p))
	==	(p)
	);
	static_assert
	(	(p	or	(q	and	!p))
	==	(p	or	q)
	);
	static_assert
	(	(p	or	(q	and	r))
	==	(p	or	(q	and	r))
	);
	static_assert
	(	(p	or	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	(p	or	(!p	or	q))
	==	(T)
	);
	static_assert
	(	(p	or	(q	or	p))
	==	(p	or	q)
	);
	static_assert
	(	(p	or	(q	or	!p))
	==	(T)
	);
	static_assert
	(	(p	or	(q	or	r))
	==	(p	or	q	or	r)
	);

	static_assert
	(	(p	+	(p	and	q))
	==	(p)
	);
	static_assert
	(	(p	+	(!p	and	q))
	==	(p	or	q)
	);
	static_assert
	(	(p	+	(q	and	p))
	==	(p)
	);
	static_assert
	(	(p	+	(q	and	!p))
	==	(p	or	q)
	);
	static_assert
	(	(p	+	(q	and	r))
	==	((p	or	q)	and	(p	or	r))
	);
	static_assert
	(	(p	+	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	(p	+	(!p	or	q))
	==	(T)
	);
	static_assert
	(	(p	+	(q	or	p))
	==	(p	or	q)
	);
	static_assert
	(	(p	+	(q	or	!p))
	==	(T)
	);
	static_assert
	(	(p	+	(q	or	r))
	==	(p	or	q	or	r)
	);
}


namespace
	Clause_X_Literal
{
	static_assert
	(	((p	and	q)	and	T)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	F)
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	p)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	!p)
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	q)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	!q)
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	r)
	==	(p	and	q	and	r)
	);

	static_assert
	(	((p and	q)	*	T)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	F)
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	p)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	!p)
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	q)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	!q)
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	r)
	==	(p	and	q	and	r)
	);

	static_assert
	(	((p and	q)	or	T)
	==	(T)
	);
	static_assert
	(	((p	and	q)	or	F)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	or	p)
	==	(p)
	);
	static_assert
	(	((p	and	q)	or	!p)
	==	(q	or	!p)
	);
	static_assert
	(	((p	and	q)	or	q)
	==	(q)
	);
	static_assert
	(	((p	and	q)	or	!q)
	==	(p	or	!q)
	);
	static_assert
	(	((p	and	q)	or	r)
	==	((p	and	q)	or	r)
	);

	static_assert
	(	((p and	q)	+	T)
	==	(T)
	);
	static_assert
	(	((p	and	q)	+	F)
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	+	p)
	==	(p)
	);
	static_assert
	(	((p	and	q)	+	!p)
	==	(q	or	!p)
	);
	static_assert
	(	((p	and	q)	+	q)
	==	(q)
	);
	static_assert
	(	((p	and	q)	+	!q)
	==	(p	or	!q)
	);
	static_assert
	(	((p	and	q)	+	r)
	==	((p	or	r)	and	(q	or	r))
	);

	static_assert
	(	((p or	q)	and	T)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	and	F)
	==	(F)
	);
	static_assert
	(	((p	or	q)	and	p)
	==	(p)
	);
	static_assert
	(	((p	or	q)	and	!p)
	==	(q	and	!p)
	);
	static_assert
	(	((p	or	q)	and	q)
	==	(q)
	);
	static_assert
	(	((p	or	q)	and	!q)
	==	(p	and	!q)
	);
	static_assert
	(	((p	or	q)	and	r)
	==	((p	or	q)	and	r)
	);

	static_assert
	(	((p or	q)	*	T)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	*	F)
	==	(F)
	);
	static_assert
	(	((p	or	q)	*	p)
	==	(p)
	);
	static_assert
	(	((p	or	q)	*	!p)
	==	(q	and	!p)
	);
	static_assert
	(	((p	or	q)	*	q)
	==	(q)
	);
	static_assert
	(	((p	or	q)	*	!q)
	==	(p	and	!q)
	);
	static_assert
	(	((p	or	q)	*	r)
	==	((p	and	r)	or	(q	and	r))
	);

	static_assert
	(	((p or	q)	or	T)
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	F)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	p)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	!p)
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	q)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	!q)
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	r)
	==	(p	or	q	or	r)
	);

	static_assert
	(	((p or	q)	+	T)
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	F)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	p)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	!p)
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	q)
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	!q)
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	r)
	==	(p	or	q	or	r)
	);
}

namespace
	Clause_X_Clause
{
	static_assert
	(	((p	and	q)	and	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(p	and	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(p	and	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(!p	and	q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(!p	and	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(!p	and	r))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(q	and	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(q	and	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(q	and	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(!q	and	p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(!q	and	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(!q	and	r))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(r	and	p))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(r	and	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(r	and	q))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(r	and	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(r	and	s))
	==	(p	and	q	and	r	and	s)
	);

	static_assert
	(	((p	and	q)	and	(p	or	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(p	or	!q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(p	or	r))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(!p	or	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(!p	or	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(!p	or	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(q	or	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(q	or	!p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(q	or	r))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(!q	or	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(!q	or	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(!q	or	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(r	or	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(r	or	!p))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(r	or	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	and	(r	or	!q))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	and	(r	or	s))
	==	(p	and	q	and	(r	or	s))
	);

	static_assert
	(	((p	and	q)	*	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(p	and	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(p	and	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(!p	and	q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(!p	and	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(!p	and	r))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(q	and	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(q	and	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(q	and	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(!q	and	p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(!q	and	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(!q	and	r))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(r	and	p))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(r	and	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(r	and	q))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(r	and	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(r	and	s))
	==	(p	and	q	and	r	and	s)
	);

	static_assert
	(	((p	and	q)	*	(p	or	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(p	or	!q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(p	or	r))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(!p	or	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(!p	or	!q))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(!p	or	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(q	or	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(q	or	!p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(q	or	r))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(!q	or	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(!q	or	!p))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(!q	or	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(r	or	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(r	or	!p))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(r	or	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	*	(r	or	!q))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	and	q)	*	(r	or	s))
	==	((p	and	q	and	r)	or	(p	and	q	and	s))
	);

	static_assert
	(	((p	or	q)	and	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	or	q)	and	(p	and	!q))
	==	(p	and	!q)
	);
	static_assert
	(	((p	or	q)	and	(p	and	r))
	==	(p	and	r)
	);
	static_assert
	(	((p	or	q)	and	(!p	and	q))
	==	(q	and	!p)
	);
	static_assert
	(	((p	or	q)	and	(!p	and	!q))
	==	(F)
	);
	static_assert
	(	((p	or	q)	and	(!p	and	r))
	==	(q	and	!p	and	r)
	);
	static_assert
	(	((p	or	q)	and	(q	and	p))
	==	(q	and	p)
	);
	static_assert
	(	((p	or	q)	and	(q	and	!p))
	==	(q	and	!p)
	);
	static_assert
	(	((p	or	q)	and	(q	and	r))
	==	(q	and	r)
	);
	static_assert
	(	((p	or	q)	and	(!q	and	p))
	==	(p	and	!q)
	);
	static_assert
	(	((p	or	q)	and	(!q	and	!p))
	==	(F)
	);
	static_assert
	(	((p	or	q)	and	(!q	and	r))
	==	(p	and	!q	and	r)
	);
	static_assert
	(	((p	or	q)	and	(r	and	p))
	==	(p	and	r)
	);
	static_assert
	(	((p	or	q)	and	(r	and	!p))
	==	(q	and	!p	and	r)
	);
	static_assert
	(	((p	or	q)	and	(r	and	q))
	==	(q	and	r)
	);
	static_assert
	(	((p	or	q)	and	(r	and	!q))
	==	(p	and	!q	and	r)
	);
	static_assert
	(	((p	or	q)	and	(r	and	s))
	==	((p	or	q)	and	r	and	s)
	);

	static_assert
	(	((p	or	q)	and	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	and	(p	or	!q))
	==	(p)
	);
	static_assert
	(	((p	or	q)	and	(p	or	r))
	==	((p	or	q)	and	(p	or	r))
	);
	static_assert
	(	((p	or	q)	and	(!p	or	q))
	==	(q)
	);
	static_assert
	(	((p	or	q)	and	(!p	or	!q))
	==	((p	or	q)	and	(!p	or	!q))
	);
	static_assert
	(	((p	or	q)	and	(!p	or	r))
	==	((p	or	q)	and	(!p	or	r))
	);
	static_assert
	(	((p	or	q)	and	(q	or	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	and	(q	or	!p))
	==	(q)
	);
	static_assert
	(	((p	or	q)	and	(q	or	r))
	==	((p	or	q)	and	(q	or	r))
	);
	static_assert
	(	((p	or	q)	and	(!q	or	p))
	==	(p)
	);
	static_assert
	(	((p	or	q)	and	(!q	or	!p))
	==	((p	or	q)	and	(!q	or	!p))
	);
	static_assert
	(	((p	or	q)	and	(!q	or	r))
	==	((p	or	q)	and	(!q	or	r))
	);
	static_assert
	(	((p	or	q)	and	(r	or	p))
	==	((p	or	q)	and	(r	or	p))
	);
	static_assert
	(	((p	or	q)	and	(r	or	!p))
	==	((p	or	q)	and	(r	or	!p))
	);
	static_assert
	(	((p	or	q)	and	(r	or	q))
	==	((p	or	q)	and	(r	or	q))
	);
	static_assert
	(	((p	or	q)	and	(r	or	!q))
	==	((p	or	q)	and	(r	or	!q))
	);
	static_assert
	(	((p	or	q)	and	(r	or	s))
	==	((p	or	q)	and	(r	or	s))
	);

	static_assert
	(	((p	or	q)	*	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	or	q)	*	(p	and	!q))
	==	(p	and	!q)
	);
	static_assert
	(	((p	or	q)	*	(p	and	r))
	==	(p	and	r)
	);
	static_assert
	(	((p	or	q)	*	(!p	and	q))
	==	(q	and	!p)
	);
	static_assert
	(	((p	or	q)	*	(!p	and	!q))
	==	(F)
	);
	static_assert
	(	((p	or	q)	*	(!p	and	r))
	==	(q	and	!p	and	r)
	);
	static_assert
	(	((p	or	q)	*	(q	and	p))
	==	(q	and	p)
	);
	static_assert
	(	((p	or	q)	*	(q	and	!p))
	==	(q	and	!p)
	);
	static_assert
	(	((p	or	q)	*	(q	and	r))
	==	(q	and	r)
	);
	static_assert
	(	((p	or	q)	*	(!q	and	p))
	==	(p	and	!q)
	);
	static_assert
	(	((p	or	q)	*	(!q	and	!p))
	==	(F)
	);
	static_assert
	(	((p	or	q)	*	(!q	and	r))
	==	(p	and	!q	and	r)
	);
	static_assert
	(	((p	or	q)	*	(r	and	p))
	==	(p	and	r)
	);
	static_assert
	(	((p	or	q)	*	(r	and	!p))
	==	(q	and	r	and	!p)
	);
	static_assert
	(	((p	or	q)	*	(r	and	q))
	==	(q	and	r)
	);
	static_assert
	(	((p	or	q)	*	(r	and	!q))
	==	(p	and	r	and	!q)
	);
	static_assert
	(	((p	or	q)	*	(r	and	s))
	==	((p	and	r	and	s)	or	(q	and	r	and	s))
	);

	static_assert
	(	((p	or	q)	*	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	*	(p	or	!q))
	==	(p)
	);
	static_assert
	(	((p	or	q)	*	(p	or	r))
	==	(p	or	(q	and	r))
	);
	static_assert
	(	((p	or	q)	*	(!p	or	q))
	==	(q)
	);
	static_assert
	(	((p	or	q)	*	(!p	or	!q))
	==	((q	and	!p)	or	(p	and	!q))
	);
	static_assert
	(	((p	or	q)	*	(!p	or	r))
	==	((q	and	!p)	or	(p	and	r))
	);
	static_assert
	(	((p	or	q)	*	(q	or	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	*	(q	or	!p))
	==	(q)
	);
	static_assert
	(	((p	or	q)	*	(q	or	r))
	==	(q	or	(p	and	r))
	);
	static_assert
	(	((p	or	q)	*	(!q	or	p))
	==	(p)
	);
	static_assert
	(	((p	or	q)	*	(!q	or	!p))
	==	((p	and	!q)	or	(q	and	!p))
	);
	static_assert
	(	((p	or	q)	*	(!q	or	r))
	==	((p	and	!q)	or	(q	and	r))
	);
	static_assert
	(	((p	or	q)	*	(r	or	p))
	==	(p	or	(q	and	r))
	);
	static_assert
	(	((p	or	q)	*	(r	or	!p))
	==	((p	and	r)	or	(q	and	!p))
	);
	static_assert
	(	((p	or	q)	*	(r	or	q))
	==	((p	and	r)	or	q)
	);
	static_assert
	(	((p	or	q)	*	(r	or	!q))
	==	((q	and	r)	or	(p	and	!q))
	);
	static_assert
	(	((p	or	q)	*	(r	or	s))
	==	((p	and	r)	or	(q	and	r)	or	(p	and	s)	or	(q	and	s))
	);

	static_assert
	(	((p	and	q)	or	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	or	(p	and	!q))
	==	(p)
	);
	static_assert
	(	((p	and	q)	or	(p	and	r))
	==	((p	and	q)	or	(p	and	r))
	);
	static_assert
	(	((p	and	q)	or	(!p	and	q))
	==	(q)
	);
	static_assert
	(	((p	and	q)	or	(!p	and	!q))
	==	((p	and	q)	or	(!p	and	!q))
	);
	static_assert
	(	((p	and	q)	or	(!p	and	r))
	==	((p	and	q)	or	(!p	and	r))
	);
	static_assert
	(	((p	and	q)	or	(q	and	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	or	(q	and	!p))
	==	(q)
	);
	static_assert
	(	((p	and	q)	or	(q	and	r))
	==	((p	and	q)	or	(q	and	r))
	);
	static_assert
	(	((p	and	q)	or	(!q	and	p))
	==	(p)
	);
	static_assert
	(	((p	and	q)	or	(!q	and	!p))
	==	((p	and	q)	or	(!q	and	!p))
	);
	static_assert
	(	((p	and	q)	or	(!q	and	r))
	==	((p	and	q)	or	(!q	and	r))
	);
	static_assert
	(	((p	and	q)	or	(r	and	q))
	==	((p	and	q)	or	(r	and	q))
	);
	static_assert
	(	((p	and	q)	or	(r	and	!q))
	==	((p	and	q)	or	(r	and	!q))
	);
	static_assert
	(	((p	and	q)	or	(r	and	p))
	==	((p	and	q)	or	(r	and	p))
	);
	static_assert
	(	((p	and	q)	or	(r	and	!p))
	==	((p	and	q)	or	(r	and	!p))
	);
	static_assert
	(	((p	and	q)	or	(r	and	s))
	==	((p	and	q)	or	(r	and	s))
	);

	static_assert
	(	((p	and	q)	or	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	and	q)	or	(p	or	!q))
	==	(p	or	!q)
	);
	static_assert
	(	((p	and	q)	or	(p	or	r))
	==	(p	or	r)
	);
	static_assert
	(	((p	and	q)	or	(!p	or	q))
	==	(q	or	!p)
	);
	static_assert
	(	((p	and	q)	or	(!p	or	!q))
	==	(T)
	);
	static_assert
	(	((p	and	q)	or	(!p	or	r))
	==	(q	or	!p	or	r)
	);
	static_assert
	(	((p	and	q)	or	(q	or	p))
	==	(q	or	p)
	);
	static_assert
	(	((p	and	q)	or	(q	or	!p))
	==	(q	or	!p)
	);
	static_assert
	(	((p	and	q)	or	(q	or	r))
	==	(q	or	r)
	);
	static_assert
	(	((p	and	q)	or	(!q	or	p))
	==	(p	or	!q)
	);
	static_assert
	(	((p	and	q)	or	(!q	or	!p))
	==	(T)
	);
	static_assert
	(	((p	and	q)	or	(!q	or	r))
	==	(p	or	!q	or	r)
	);
	static_assert
	(	((p	and	q)	or	(r	or	p))
	==	(p	or	r)
	);
	static_assert
	(	((p	and	q)	or	(r	or	!p))
	==	(q	or	!p	or	r)
	);
	static_assert
	(	((p	and	q)	or	(r	or	q))
	==	(q	or	r)
	);
	static_assert
	(	((p	and	q)	or	(r	or	!q))
	==	(p	or	!q	or	r)
	);
	static_assert
	(	((p	and	q)	or	(r	or	s))
	==	((p	and	q)	or	r	or	s)
	);

	static_assert
	(	((p	or	q)	or	(p	and	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(p	and	!q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(p	and	r))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(!p	and	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(!p	and	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(!p	and	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(q	and	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(q	and	!p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(q	and	r))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(!q	and	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(!q	and	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(!q	and	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(r	and	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(r	and	!p))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(r	and	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(r	and	!q))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(r	and	s))
	==	(p	or	q	or	(r	and	s))
	);

	static_assert
	(	((p	or	q)	or	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(p	or	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(p	or	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(!p	or	q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(!p	or	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(!p	or	r))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(q	or	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	or	(q	or	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(q	or	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(!q	or	p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(!q	or	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(!q	or	r))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(r	or	p))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(r	or	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(r	or	q))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(r	or	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(r	or	s))
	==	(p	or	q	or	r	or	s)
	);

	static_assert
	(	((p	and	q)	+	(p	and	q))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	+	(p	and	!q))
	==	(p)
	);
	static_assert
	(	((p	and	q)	+	(p	and	r))
	==	(p	and	(q	or	r))
	);
	static_assert
	(	((p	and	q)	+	(!p	and	q))
	==	(q)
	);
	static_assert
	(	((p	and	q)	+	(!p	and	!q))
	==	((q	or	!p)	and	(p	or	!q))
	);
	static_assert
	(	((p	and	q)	+	(!p	and	r))
	==	((q	or	!p)	and	(p	or	r))
	);
	static_assert
	(	((p	and	q)	+	(q	and	p))
	==	(p	and	q)
	);
	static_assert
	(	((p	and	q)	+	(q	and	!p))
	==	(q)
	);
	static_assert
	(	((p	and	q)	+	(q	and	r))
	==	(q	and	(p	or	r))
	);
	static_assert
	(	((p	and	q)	+	(!q	and	p))
	==	(p)
	);
	static_assert
	(	((p	and	q)	+	(!q	and	!p))
	==	((p	or	!q)	and	(q	or	!p))
	);
	static_assert
	(	((p	and	q)	+	(!q	and	r))
	==	((p	or	!q)	and	(q	or	r))
	);
	static_assert
	(	((p	and	q)	+	(r	and	p))
	==	(p	and	(q	or	r))
	);
	static_assert
	(	((p	and	q)	+	(r	and	!p))
	==	((p	or	r)	and	(q	or	!p))
	);
	static_assert
	(	((p	and	q)	+	(r	and	q))
	==	((p	or	r)	and	q)
	);
	static_assert
	(	((p	and	q)	+	(r	and	!q))
	==	((q	or	r)	and	(p	or	!q))
	);
	static_assert
	(	((p	and	q)	+	(r	and	s))
	==	((p	or	r)	and	(q	or	r)	and	(p	or	s)	and	(q	or	s))
	);

	static_assert
	(	((p	and	q)	+	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	and	q)	+	(p	or	!q))
	==	(p	or	!q)
	);
	static_assert
	(	((p	and	q)	+	(p	or	r))
	==	(p	or	r)
	);
	static_assert
	(	((p	and	q)	+	(!p	or	q))
	==	(q	or	!p)
	);
	static_assert
	(	((p	and	q)	+	(!p	or	!q))
	==	(T)
	);
	static_assert
	(	((p	and	q)	+	(!p	or	r))
	==	(q	or	!p	or	r)
	);
	static_assert
	(	((p	and	q)	+	(q	or	p))
	==	(q	or	p)
	);
	static_assert
	(	((p	and	q)	+	(q	or	!p))
	==	(q	or	!p)
	);
	static_assert
	(	((p	and	q)	+	(q	or	r))
	==	(q	or	r)
	);
	static_assert
	(	((p	and	q)	+	(!q	or	p))
	==	(p	or	!q)
	);
	static_assert
	(	((p	and	q)	+	(!q	or	!p))
	==	(T)
	);
	static_assert
	(	((p	and	q)	+	(!q	or	r))
	==	(p	or	!q	or	r)
	);
	static_assert
	(	((p	and	q)	+	(r	or	p))
	==	(p	or	r)
	);
	static_assert
	(	((p	and	q)	+	(r	or	!p))
	==	(q	or	r	or !p)
	);
	static_assert
	(	((p	and	q)	+	(r	or	q))
	==	(q	or	r)
	);
	static_assert
	(	((p	and	q)	+	(r	or	!q))
	==	(p	or	r	or	!q)
	);
	static_assert
	(	((p	and	q)	+	(r	or	s))
	==	((p	or	r	or	s)	and	(q	or	r	or	s))
	);

	static_assert
	(	((p	or	q)	+	(p	and	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(p	and	!q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(p	and	r))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(!p	and	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(!p	and	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(!p	and	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(q	and	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(q	and	!p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(q	and	r))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(!q	and	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(!q	and	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(!q	and	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(r	and	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(r	and	!p))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(r	and	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(r	and	!q))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(r	and	s))
	==	((p	or	q	or	r)	and	(p	or	q	or	s))
	);

	static_assert
	(	((p	or	q)	+	(p	or	q))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(p	or	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(p	or	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(!p	or	q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(!p	or	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(!p	or	r))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(q	or	p))
	==	(p	or	q)
	);
	static_assert
	(	((p	or	q)	+	(q	or	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(q	or	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(!q	or	p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(!q	or	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(!q	or	r))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(r	or	p))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(r	or	!p))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(r	or	q))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(r	or	!q))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(r	or	s))
	==	(p	or	q	or	r	or	s)
	);
}

namespace
	Clause2_X_Clause3
{
	static_assert
	(	((p	and	q)	and	(!p	and	!q	and	r))
	==	(F)
	);
	static_assert
	(	((p	and	q)	and	(!p	or	!q	or	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	or	q)	and	(!p	and	!q	and	r))
	==	(F)
	);
	static_assert
	(	((p	or	q)	and	(!p	or	!q	or	r))
	==	((p	or	q)	and	(!p	or	!q	or	r))
	);
	static_assert
	(	((p	and	q)	*	(!p	and	!q	and	r))
	==	(F)
	);
	static_assert
	(	((p	and	q)	*	(!p	or	!q	or	r))
	==	(p	and	q	and	r)
	);
	static_assert
	(	((p	or	q)	*	(!p	and	!q	and	r))
	==	(F)
	);
	static_assert
	(	((p	or	q)	*	(!p	or	!q	or	r))
	==	((q	and	!p)	or	(p	and	!q)	or	(p	and	r))
	);
	static_assert
	(	((p	and	q)	or	(!p	and	!q	and	r))
	==	((p	and	q)	or	(!p	and	!q	and	r))
	);
	static_assert
	(	((p	and	q)	or	(!p	or	!q	or	r))
	==	(T)
	);
	static_assert
	(	((p	or	q)	or	(!p	and	!q	and	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	or	(!p	or	!q	or	r))
	==	(T)
	);
	static_assert
	(	((p	and	q)	+	(!p	and	!q	and	r))
	==	((q	or	!p)	and	(p	or	!q)	and	(p	or	r))
	);
	static_assert
	(	((p	and	q)	+	(!p	or	!q	or	r))
	==	(T)
	);
	static_assert
	(	((p	or	q)	+	(!p	and	!q	and	r))
	==	(p	or	q	or	r)
	);
	static_assert
	(	((p	or	q)	+	(!p	or	!q	or	r))
	==	(T)
	);
}

namespace
	Literal_X_Term_1x2
{

}

namespace
	Term_1x2_X_Literal
{

}

namespace
	Clause_X_Term_1x2
{

}

namespace
	Term_1x2_X_Clause
{

}

namespace
	Term_1x2_X_Term_1x2
{

}

namespace
	Literal_X_Term_2x2
{

}

namespace
	Term_2x2_X_Literal
{

}

namespace
	Clause_X_Term_2x2
{

}

namespace
	Term_2x2_X_Clause
{

}

namespace
	Term_1x2_Term_2x2
{

}

namespace
	Term_2x2_X_Term_1x2
{

}

namespace
	Term_2x2_X_Term_2x2
{

}
