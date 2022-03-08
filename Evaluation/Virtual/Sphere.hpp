export module Evaluation.Virtual:Sphere;

export import :Circle;
export import :SphericBody;

export namespace
	Bodies3D
{
	struct
		Sphere
	:	SphericBody
		<	Shapes2D::Circle
		>
	{
		auto
			GetDepth
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				this
				->	Shapes2D
				.	Width
			;
		}
	};
}
