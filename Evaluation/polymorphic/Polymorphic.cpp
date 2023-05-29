export module Evaluation.Polymorphic;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.Polymorphic;

export namespace
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
