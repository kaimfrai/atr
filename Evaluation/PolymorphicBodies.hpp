#pragma once

import Polymorphic;
#include <Evaluation/CRTPBodies.hpp>

#include "Shared.hpp"

namespace
	Bodies3D
{
	struct
		ComputeVolume
	{};

	auto
		poly_extend
		(	ComputeVolume
		,	auto const
			&	i_rBody
		)
	noexcept
	->	Float
	{
		return
			i_rBody
			.	ComputeVolume
				()
		;
	}
}
