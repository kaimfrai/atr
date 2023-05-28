import Evaluation.Archetype.ComputeVolume;
import Evaluation.Archetype.Head;
import Evaluation.Archetype.Sphere;

import ATR.Address;
import ATR.Instance;

import Meta.ID;

using ::ATR::Address;
using ::ATR::Instance;
using ::Meta::ID;

static_assert
(	Address<ID<"ComputeVolume">, Instance<ID<"Head">> const&>
==	Address<ID<"ComputeVolume">, Instance<ID<"Sphere">> const&>
);
