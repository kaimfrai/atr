#pragma once

#include <Evaluation/CRTPBodies.hpp>

#include <boost/type_erasure/any.hpp>
#include <boost/type_erasure/member.hpp>
#include <boost/mpl/vector.hpp>

#include "Shared.hpp"

namespace
	Bodies3D
{
	BOOST_TYPE_ERASURE_MEMBER(ComputeVolume, )
}
