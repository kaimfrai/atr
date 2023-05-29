export module Evaluation.Polymorphic;

import Evaluation.Shared.DataTypes;
import Evaluation.Polymorphic.Library;

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
