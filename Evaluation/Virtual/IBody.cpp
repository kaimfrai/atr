export module Evaluation.Virtual.IBody;

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
		->	float const
			&
		=	0;

		[[nodiscard]]
		auto virtual constexpr
		(	GetHeight
		)	()	const
			noexcept
		->	float const
			&
		=	0;

		[[nodiscard]]
		auto virtual constexpr
		(	GetWidth
		)	()	const
			noexcept
		->	float const
			&
		=	0;

		[[nodiscard]]
		auto virtual constexpr
		(	ComputeVolume
		)	()	const
			noexcept
		->	float
		=	0;

		virtual constexpr inline
		(	compl
			IBody
		)	()
			noexcept
		=	default;
	};
}
