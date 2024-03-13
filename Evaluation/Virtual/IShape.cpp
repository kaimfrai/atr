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

		explicit(false) constexpr inline
		(	IShape
		)	()
			noexcept
		=	default;

		explicit(false) constexpr inline
		(	IShape
		)	(	IShape const
				&
			)
			noexcept
		=	default;

		explicit(false) constexpr inline
		(	IShape
		)	(	IShape
				&&
			)
			noexcept
		=	default;

		auto constexpr inline
		(	operator=
		)	(	IShape const
				&
			)	&
			noexcept
		->	IShape&
		=	default;

		auto constexpr inline
		(	operator=
		)	(	IShape
				&&
			)	&
			noexcept
		->	IShape&
		=	default;

		virtual constexpr inline
		(	compl
			IShape
		)	()
			noexcept
		=	default;
	};
}
