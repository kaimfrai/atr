import Evaluation.Archetype.ComputeVolume;
import Evaluation.Archetype.Head;
import Evaluation.Archetype.Sphere;

import ATR.Address;
import ATR.Instance;

import Meta.ID.Alias;

using ::ATR::Address;
using ::ATR::Type;
using ::Meta::ID_T;

static_assert
(	Address<ID_T<"ComputeVolume">, Type<"Head"> const&>
==	Address<ID_T<"ComputeVolume">, Type<"Sphere"> const&>
);
