export module Evaluation.CRTP.ExtendedShape;

import Evaluation.CRTP.BasicBody;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tBody
		,	typename
				t_tShape
		>
	struct
		ExtendedShape
	:	BasicBody
		<	t_tBody
		>
	{
		t_tShape
			Shape2D
		;

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
		->	float const
			&
		{	return
			Shape2D
			.	GetHeight
				()
			;
		}

		[[nodiscard]]
		auto constexpr inline
			GetWidth
			()	const
			noexcept
		->	float const
			&
		{	return
			Shape2D
			.	GetWidth
				()
			;
		}
	};
}
