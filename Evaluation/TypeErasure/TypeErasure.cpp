export module Evaluation.TypeErasure;

export import Evaluation.Dependency.TypeErasure;
export import Evaluation.CRTP.Cube;
export import Evaluation.CRTP.Cuboid;
export import Evaluation.CRTP.Pyramid;
export import Evaluation.CRTP.Sphere;
export import Evaluation.CRTP.Cylinder;
export import Evaluation.CRTP.Cone;
export import Evaluation.CRTP.Ellipsoid;
export import Evaluation.CRTP.Head;
export import Evaluation.Dependency.DefaultConstruct;
import Evaluation.Dependency.DataTypes;
// required for use of macro
import <boost.hpp>;

import Std;

export namespace
	Bodies3D
{
	BOOST_TYPE_ERASURE_MEMBER(ComputeVolume, )

	using
		Body3D
	=	boost::type_erasure::any
		<	boost::mpl::vector
			<	has_ComputeVolume
				<	auto
						()	const
					->	Float
				>
			,	boost::type_erasure::constructible
				<	boost::type_erasure::_self
					(	boost::type_erasure::_self
						&&
					)
				>
			,	boost::type_erasure::destructible<>
			>
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
			.	ComputeVolume
				()
		;
	}
}
