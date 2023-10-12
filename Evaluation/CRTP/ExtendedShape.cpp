export module Evaluation.CRTP.ExtendedShape;

import Evaluation.CRTP.BasicBody;

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
		;

		[[nodiscard]]
		auto constexpr inline
		(	GetLateral
		)	(	this ExtendedShape const
				&	i_rThis
			)
			noexcept
		->	float
		{	return
				i_rThis
				.	Shape2D
				.	GetLateral
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetVertical
		)	(	this ExtendedShape const
				&	i_rThis
			)
			noexcept
		->	float
		{	return
				i_rThis
				.	Shape2D
				.	GetVertical
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetLongitudinal
		)	(	this ExtendedShape const
				&	i_rThis
			)
			noexcept
		->	float
		{	return
				i_rThis
				.	Shape2D
				.	GetLongitudinal
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetRed
		)	(	this ExtendedShape const
				&	i_rThis
			)
			noexcept
		->	float
		{	return
				i_rThis
				.	Shape2D
				.	GetRed
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetGreen
		)	(	this ExtendedShape const
				&	i_rThis
			)
			noexcept
		->	float
		{	return
				i_rThis
				.	Shape2D
				.	GetGreen
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetBlue
		)	(	this ExtendedShape const
				&	i_rThis
			)
			noexcept
		->	float
		{	return
				i_rThis
				.	Shape2D
				.	GetBlue
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetAlpha
		)	(	this ExtendedShape const
				&	i_rThis
			)
			noexcept
		->	float
		{	return
				i_rThis
				.	Shape2D
				.	GetAlpha
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetHeight
		)	(	this ExtendedShape const
				&	i_rThis
			)
			noexcept
		->	float
		{	return
				i_rThis
				.	Shape2D
				.	GetHeight
					()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetWidth
		)	(	this auto const
				&	i_rThis
			)
			noexcept
		->	float
		{	return
				i_rThis
				.	Shape2D
				.	GetWidth
					()
			;
		}
	};
}
