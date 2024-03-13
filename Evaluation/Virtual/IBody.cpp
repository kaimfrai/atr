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
		->	float
		=	0;

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
		(	ComputeVolume
		)	()	const
			noexcept
		->	float
		=	0;

		explicit(false) constexpr inline
		(	IBody
		)	()
			noexcept
		=	default;

		explicit(false) constexpr inline
		(	IBody
		)	(	IBody const
				&
			)
			noexcept
		=	default;

		explicit(false) constexpr inline
		(	IBody
		)	(	IBody
				&&
			)
			noexcept
		=	default;

		auto constexpr inline
		(	operator=
		)	(	IBody const
				&
			)	&
			noexcept
		->	IBody&
		=	default;

		auto constexpr inline
		(	operator=
		)	(	IBody
				&&
			)	&
			noexcept
		->	IBody&
		=	default;

		virtual constexpr inline
		(	compl
			IBody
		)	()
			noexcept
		=	default;
	};
}
