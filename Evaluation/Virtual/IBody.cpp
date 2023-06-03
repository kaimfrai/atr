export module Evaluation.Virtual.IBody;

import Evaluation.Dependency.DataTypes;

import Std;

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

	using
		Body3D
	=	::std::unique_ptr
		<	IBody
		>
	;

	[[nodiscard]]
	auto constexpr
	(	ComputeVolume
	)	(	Body3D const
			&	i_rBody3D
		)
		noexcept
	->	Float
	{	return
		i_rBody3D
		->	ComputeVolume
			()
		;
	}
}
