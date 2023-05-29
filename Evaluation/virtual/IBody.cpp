export module Evaluation.Virtual.IBody;

import Evaluation.Dependency.DataTypes;

export namespace
	Bodies3D
{
	struct
		IBody
	{
		virtual
		auto
			GetDepth
			()	const
		noexcept
		->	Float const
			&
		=	0
		;

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
			ComputeVolume
			()	const
		noexcept
		->	Float
		=	0
		;

		virtual
			compl
			IBody
			()
			noexcept
		=	default
		;
	};
}
