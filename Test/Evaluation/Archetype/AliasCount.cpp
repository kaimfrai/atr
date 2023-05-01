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
(	Config_Of<"Square">.AliasCount()
==	1z
);
static_assert
(	Config_Of<"Rectangle">.AliasCount()
==	0z
);
static_assert
(	Config_Of<"Triangle">.AliasCount()
==	0z
);
static_assert
(	Config_Of<"Circle">.AliasCount()
==	1z
);
static_assert
(	Config_Of<"Ellipse">.AliasCount()
==	0z
);
static_assert
(	Config_Of<"Cube">.AliasCount()
==	2z
);
static_assert
(	Config_Of<"Cuboid">.AliasCount()
==	0z
);
static_assert
(	Config_Of<"Sphere">.AliasCount()
==	2z
);
static_assert
(	Config_Of<"Cylinder">.AliasCount()
==	1z
);
static_assert
(	Config_Of<"Cone">.AliasCount()
==	1z
);
static_assert
(	Config_Of<"Ellipsoid">.AliasCount()
==	0z
);
static_assert
(	Config_Of<"Head">.AliasCount()
==	3z * Config_Of<"Sphere">.AliasCount()
);
