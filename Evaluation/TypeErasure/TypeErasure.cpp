export module Evaluation.TypeErasure;

export import Evaluation.Dependency.TypeErasure;
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
