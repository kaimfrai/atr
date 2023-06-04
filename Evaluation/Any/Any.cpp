export module Evaluation.Any;

import Evaluation.CRTP.Circle;
import Evaluation.CRTP.Ellipse;
import Evaluation.CRTP.Rectangle;
import Evaluation.CRTP.Square;
import Evaluation.CRTP.Triangle;
import Evaluation.CRTP.Shape3D;
import Evaluation.CRTP.Cube;
import Evaluation.CRTP.Cuboid;
import Evaluation.CRTP.Pyramid;
import Evaluation.CRTP.Sphere;
import Evaluation.CRTP.Cylinder;
import Evaluation.CRTP.Cone;
import Evaluation.CRTP.Ellipsoid;
import Evaluation.CRTP.Head;
import Evaluation.Dependency.InPlaceConstruct;
import Evaluation.Dependency.DataTypes;

import Std;

export using ::InPlaceConstruct;

export namespace
	Bodies3D
{
	struct Circle : Shape3D<::Shapes2D::Circle>{};
	struct Ellipse : Shape3D<::Shapes2D::Ellipse>{};
	struct Rectangle : Shape3D<::Shapes2D::Rectangle>{};
	struct Square : Shape3D<::Shapes2D::Square>{};
	struct Triangle : Shape3D<::Shapes2D::Triangle>{};

	using ::Bodies3D::Cube;
	using ::Bodies3D::Cuboid;
	using ::Bodies3D::Pyramid;
	using ::Bodies3D::Sphere;
	using ::Bodies3D::Cylinder;
	using ::Bodies3D::Cone;
	using ::Bodies3D::Ellipsoid;
	using ::Bodies3D::Head;

	struct
		IBody
	{
		[[nodiscard]]
		auto virtual constexpr
		(	ComputeVolume
		)	()	const
			noexcept
		->	Float
		=	0;

		explicit(false) constexpr
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

		virtual constexpr inline
		(	compl
			IBody
		)	()
			noexcept
		=	default;
	};

	template
		<	typename
				t_tBody
		>
	struct
		BodyAdapter
	:	IBody
	{
		t_tBody
			m_vBody
		;

		[[nodiscard]]
		auto constexpr inline
		(	ComputeVolume
		)	()	const
			noexcept
		->	Float
			override
		{	return
			m_vBody
			.	ComputeVolume
				()
			;
		}
	};

	struct
		AnyBody
	{
		::std::any
			m_vAny
		;
		auto
		(*	m_fCast
		)	(	::std::any const
				&
			)
			noexcept
		->	IBody const
			&
		;

		template
			<	typename
					t_tBody
			>
		explicit(false) constexpr inline
		(	AnyBody
		)	(	::std::in_place_type_t
				<	t_tBody
				>
			)
			noexcept
		:	m_vAny
			{	::std::in_place_type
				<	BodyAdapter
					<	t_tBody
					>
				>
			}
		,	m_fCast
			{	+[]	(	::std::any const
						&	i_rAny
					)
					noexcept
				->	IBody const
					&
				{	return
					::std::any_cast
					<	BodyAdapter
						<	t_tBody
						>	const
						&
					>(	i_rAny
					);
				}
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	operator->
		)	()	const
			noexcept
		->	IBody const
			*
		{	return
			&m_fCast
			(	m_vAny
			);
		}
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolume
	)	(	AnyBody const
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
