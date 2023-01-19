export module Evaluation.Virtual:IShape;

import Evaluation.Shared.DataTypes;

export namespace
	Shapes2D
{
	struct
		IShape
	{
		virtual
		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		=	0
		;

		virtual
		auto
			GetWidth
			()	const
		noexcept
		->	Float const
			&
		=	0
		;

		virtual
		auto
			ComputeArea
			()	const
		noexcept
		->	Float
		=	0
		;

		virtual
			compl
			IShape
			()
			noexcept
		=	default
		;
	};
}
