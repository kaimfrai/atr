export module Evaluation.Replication.Cone;

import Evaluation.Shared.DataTypes;
import Evaluation.Shared.PiFraction;

export namespace
	Bodies3D
{
	struct
		Cone
	{
		RGBAColor
			Color
		;
		Float
			Depth
		;
		Float
			Width
		;
	};

	[[nodiscard]]
	auto constexpr
		ComputeVolumeCone
		(	void const
			*	i_aObject
		)
		noexcept
	->	Float
	{
		Cone const
		*	aCone
		=	static_cast
			<	Cone const
				*
			>(	i_aObject
			)
		;

		return
			PiFraction
			<	1z
			,	12z
			>{}
		*	aCone
			->	Depth
		*	aCone
			->	Width
		*	aCone
			->	Width
		;
	}
}
