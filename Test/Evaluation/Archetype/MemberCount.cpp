import Evaluation.Archetype.Square;
import Evaluation.Archetype.Rectangle;
import Evaluation.Archetype.Triangle;
import Evaluation.Archetype.Circle;
import Evaluation.Archetype.Ellipse;
import Evaluation.Archetype.Cube;
import Evaluation.Archetype.Cuboid;
import Evaluation.Archetype.Pyramid;
import Evaluation.Archetype.Sphere;
import Evaluation.Archetype.Cylinder;
import Evaluation.Archetype.Cone;
import Evaluation.Archetype.Ellipsoid;
import Evaluation.Archetype.Head;

import ATR.Member.Config;

using ::ATR::Member::Config_Of;

static_assert
(	Config_Of<"Square">.MemberCount
==	3uz
);
static_assert
(	Config_Of<"Rectangle">.MemberCount
==	4uz
);
static_assert
(	Config_Of<"Triangle">.MemberCount
==	4uz
);
static_assert
(	Config_Of<"Circle">.MemberCount
==	3uz
);
static_assert
(	Config_Of<"Ellipse">.MemberCount
==	4uz
);
static_assert
(	Config_Of<"Cube">.MemberCount
==	3uz
);
static_assert
(	Config_Of<"Cuboid">.MemberCount
==	5uz
);
static_assert
(	Config_Of<"Sphere">.MemberCount
==	3uz
);
static_assert
(	Config_Of<"Cylinder">.MemberCount
==	4uz
);
static_assert
(	Config_Of<"Cone">.MemberCount
==	4uz
);
static_assert
(	Config_Of<"Ellipsoid">.MemberCount
==	5uz
);
static_assert
(	Config_Of<"Head">.MemberCount
==	3uz * Config_Of<"Sphere">.MemberCount
);
