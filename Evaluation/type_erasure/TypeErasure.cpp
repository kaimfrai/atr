export module Evaluation.TypeErasure;

import Evaluation.Dependency.TypeErasure;
// required for use of macro
import <boost.hpp>;

import Std;

export namespace
	Bodies3D
{
	BOOST_TYPE_ERASURE_MEMBER(ComputeVolume, )
}
