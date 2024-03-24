export module Evaluation.TagReplication.Sphere;

export import Evaluation.TagReplication.Tag;
import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Sphere
	{
		ETag static constexpr inline
			Tag
		=	ETag::Sphere
		;

		float
			ColorRed
		;
		float
			ColorGreen
		;
		float
			ColorBlue
		;
		float
			ColorAlpha
		;
		float
			PointLateral
		;
		float
			PointLongitudinal
		;
		float
			PointVertical
		;
		float
			Height
		;
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeSphere
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	float
	{
		Sphere const
		*	aSphere
		=	static_cast
			<	Sphere const
				*
			>(	i_aObject
			)
		;

		return
			PiFraction
			<	1z
			,	6z
			>
		*	aSphere
			->	Height
		*	aSphere
			->	Height
		*	aSphere
			->	Height
		;
	}
}
