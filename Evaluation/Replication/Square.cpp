export module Evaluation.Replication.Square;

import Evaluation.Dependency.DataTypes;

import Std;

export namespace
	Bodies3D
{
	struct
		Square
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

