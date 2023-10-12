export module Evaluation.Virtual.IShape;

export namespace
	Shapes2D
{
	struct
		IShape
	{
		[[nodiscard]]
		auto virtual constexpr
		(	GetHeight
		)	()	const
			noexcept
		->	float
		=	0;

		[[nodiscard]]
		auto virtual constexpr
		(	GetWidth
		)	()	const
			noexcept
		->	float
		=	0;

		[[nodiscard]]
		auto virtual constexpr
		(	ComputeArea
		)	()	const
			noexcept
		->	float
		=	0;

		virtual constexpr inline
		(	compl
			IShape
		)	()
			noexcept
		=	default;
	};
}
