import Evaluation.Archetype.ComputeVolume;
import Evaluation.Archetype.Head;
import Evaluation.Archetype.Sphere;

import ATR.Address;
import ATR.Instance;

import Meta.ID;

using ::ATR::Address;
using ::ATR::Type;
using ::Meta::ID;

static_assert
(	Address<ID<"ComputeVolume">, Type<"Head"> const&>
==	Address<ID<"ComputeVolume">, Type<"Sphere"> const&>
);
