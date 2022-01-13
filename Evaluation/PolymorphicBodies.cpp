export module Evaluation.PolymorphicBodies;

export import Evaluation.CRTPBodies;
export import Polymorphic;

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
