export module Evaluation.Virtual.IBody;

import Evaluation.Dependency.DataTypes;

export namespace
	Bodies3D
{
	struct
		IBody
	{
		[[nodiscard]]
		auto virtual constexpr
		(	GetDepth
		)	()	const
			noexcept
		->	Float const
			&
		=	0;

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
		(	ComputeVolume
		)	()	const
			noexcept
		->	Float
		=	0;

		virtual constexpr
		(	compl
			IBody
		)	()
			noexcept
		=	default;
	};
}
