export module Evaluation.Virtual.IShape;

import Evaluation.Dependency.DataTypes;

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
		->	Float const
			&
		=	0;

		[[nodiscard]]
		auto virtual constexpr
		(	GetWidth
		)	()	const
			noexcept
		->	Float const
			&
		=	0;

		[[nodiscard]]
		auto virtual constexpr
		(	ComputeArea
		)	()	const
			noexcept
		->	Float
		=	0;

		virtual constexpr inline
		(	compl
			IShape
		)	()
			noexcept
		=	default;
	};
}
