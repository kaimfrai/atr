export module Evaluation.Replication:Cone;

export import Evaluation.Shared;

export namespace
	Bodies3D
{
	struct
		Cone
	{
		Float
			Depth
		;
		Float
			Width
		;
		RGBAColor
			Color
		;
	};

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
