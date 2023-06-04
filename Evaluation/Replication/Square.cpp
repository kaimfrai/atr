export module Evaluation.Replication.Square;

import Evaluation.Dependency.DataTypes;

import Std;

export namespace
	Bodies3D
{
	struct
		Square
	{
		RGBAColor
			Color
		;
		Float
			Width
		;
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeSquare
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	Float
	{
		Square const
		*	aSquare
		=	static_cast
			<	Square const
				*
			>(	i_aObject
			)
		;

		return
			aSquare
			->	Width
		*	aSquare
			->	Width
		;
	}
}

