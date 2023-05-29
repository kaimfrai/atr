export module Evaluation.Replication.Cube;

import Evaluation.Shared.DataTypes;

export namespace
	Bodies3D
{
	struct
		Cube
	{
		RGBAColor
			Color
		;
		Float
			Width
		;
	};

	[[nodiscard]]
	auto constexpr
		ComputeVolumeCube
		(	void const
			*	i_aObject
		)
		noexcept
	->	Float
	{
		Cube const
		*	aCube
		=	static_cast
			<	Cube const
				*
			>(	i_aObject
			)
		;

		return
			aCube
			->	Width
		*	aCube
			->	Width
		*	aCube
			->	Width
		;
	}
}
