export module Evaluation.Virtual.Ellipsoid;

export import Evaluation.Virtual.Ellipse;
export import Evaluation.Virtual.SphericBody;

export namespace
	Bodies3D
{
	struct
		Ellipsoid
	:	SphericBody
		<	Shapes2D::Ellipse
		>
	{
		Float
			Depth
		;

		auto
			GetDepth
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Depth
			;
		}
	};
}
