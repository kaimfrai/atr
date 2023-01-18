import Meta.Predicate.Category;
import Meta.Logic.Conjunction;
import Meta.Logic.Negation;
import Meta.Logic.Equivalence;
import Meta.Logic.Term;

using namespace Meta;

static_assert
(	(	IsIntegral
	and	not
		IsUnsigned
	)
==	IsSignedIntegral
);

static_assert
(	(	IsIntegral
	and	not
		IsSignedIntegral
	)
==	IsUnsigned
);

static_assert
(	(	IsSigned
	and	not
		IsIntegral
	)
==	IsFloatingPoint
);

static_assert
(	(	IsObject
	and	not
		IsArray
	and	not
		IsCustom
	)
==	IsScalar
);

static_assert
(	(	not
		IsFunction
	and	not
		IsReference
	and	not
		IsVoid
	)
==	IsObject
);

static_assert
(	not
	IsFundamental
==	IsCompound
);

static_assert
(	(	not
		IsFundamental
	and	not
		IsCompound
	)
==	Logic::False
);
