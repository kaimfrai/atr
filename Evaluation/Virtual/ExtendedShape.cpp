export module Evaluation.Virtual.ExtendedShape;

import Evaluation.Virtual.BasicBody;

import std;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tShape
		>
	struct
		ExtendedShape
	:	BasicBody
	{
		t_tShape
			Shape2D
		{};

		explicit(false) constexpr inline
		(	ExtendedShape
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	ExtendedShape
		)	(	auto
				&&
				...	i_rpArgument
			)
			noexcept
		:	Shape2D
			{	::std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	GetLateral
		)	()	const
			noexcept
		->	float
		{	return
				Shape2D
				.	GetLateral
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetVertical
		)	()	const
			noexcept
		->	float
		{	return
				Shape2D
				.	GetVertical
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetLongitudinal
		)	()	const
			noexcept
		->	float
		{	return
				Shape2D
				.	GetLongitudinal
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetRed
		)	()	const
			noexcept
		->	float
		{	return
				Shape2D
				.	GetRed
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetGreen
		)	()	const
			noexcept
		->	float
		{	return
				Shape2D
				.	GetGreen
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetBlue
		)	()	const
			noexcept
		->	float
		{	return
				Shape2D
				.	GetBlue
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetAlpha
		)	()	const
			noexcept
		->	float
		{	return
				Shape2D
				.	GetAlpha
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetHeight
		)	()	const
			noexcept
		->	float
			override
		{	return
				Shape2D
				.	GetHeight
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetWidth
		)	()	const
			noexcept
		->	float
			override
		{	return
				Shape2D
				.	GetWidth
					()
			;
		}
	};
}
