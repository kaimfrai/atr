import Evaluation.Archetype.Circle;
import Evaluation.Archetype.Cone;
import Evaluation.Archetype.Cube;
import Evaluation.Archetype.Cuboid;
import Evaluation.Archetype.Cylinder;
import Evaluation.Archetype.Ellipse;
import Evaluation.Archetype.Ellipsoid;
import Evaluation.Archetype.Head;
import Evaluation.Archetype.Pyramid;
import Evaluation.Archetype.Rectangle;
import Evaluation.Archetype.Sphere;
import Evaluation.Archetype.Square;
import Evaluation.Archetype.Triangle;

import ATR.Member.Config;

using ::ATR::Member::Config_Of;

static_assert
(	Config_Of<"Square">.MemberCount()
==	3z
);
static_assert
(	Config_Of<"Rectangle">.MemberCount()
==	4z
);
static_assert
(	Config_Of<"Triangle">.MemberCount()
==	4z
);
static_assert
(	Config_Of<"Circle">.MemberCount()
==	3z
);
static_assert
(	Config_Of<"Ellipse">.MemberCount()
==	4z
);
static_assert
(	Config_Of<"Cube">.MemberCount()
==	3z
);
static_assert
(	Config_Of<"Cuboid">.MemberCount()
==	5z
);
static_assert
(	Config_Of<"Sphere">.MemberCount()
==	3z
);
static_assert
(	Config_Of<"Cylinder">.MemberCount()
==	4z
);
static_assert
(	Config_Of<"Cone">.MemberCount()
==	4z
);
static_assert
(	Config_Of<"Ellipsoid">.MemberCount()
==	5z
);
static_assert
(	Config_Of<"Head">.MemberCount()
==	3z * Config_Of<"Sphere">.MemberCount()
);
