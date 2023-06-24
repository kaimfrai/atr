export module Evaluation.Replication.Cube;

import Evaluation.Dependency.DataTypes;

export namespace
	Bodies3D
{
	struct
		Cube
	{
		Float
			Width
		;
		RGBAColor
			Color
		;
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeCube
	)	(	void const
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

