export module Evaluation.Replication.Square;

import Std;

export namespace
	Bodies3D
{
	struct
		Square
	{
		float
			ColorAlpha
		;
		float
			ColorBlue
		;
		float
			ColorGreen
		;
		float
			ColorRed
		;
		float
			Height
		;
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeSquare
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	float
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
			->	Height
		*	aSquare
			->	Height
		;
	}
}

