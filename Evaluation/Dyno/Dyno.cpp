export module Evaluation.Dyno;

export import Evaluation.Dependency.Dyno;
import Evaluation.CRTP.Cube;
import Evaluation.CRTP.Cuboid;
import Evaluation.CRTP.Pyramid;
import Evaluation.CRTP.Sphere;
import Evaluation.CRTP.Cylinder;
import Evaluation.CRTP.Cone;
import Evaluation.CRTP.Ellipsoid;
import Evaluation.CRTP.Head;
import Evaluation.Dependency.DefaultConstruct;
import Evaluation.Dependency.DataTypes;

using namespace dyno::literals;

export using ::DefaultConstruct;

export namespace
	Bodies3D
{
	using ::Bodies3D::Cube;
	using ::Bodies3D::Cuboid;
	using ::Bodies3D::Pyramid;
	using ::Bodies3D::Sphere;
	using ::Bodies3D::Cylinder;
	using ::Bodies3D::Cone;
	using ::Bodies3D::Ellipsoid;
	using ::Bodies3D::Head;

	struct
		VolumeComputer
	:	decltype
		(	dyno::requires_
			(	"ComputeVolume"_s
			=	dyno::method
				<	auto
						() const
					->	Float
				>
			,	dyno::CopyConstructible
				{}
			)
		)
	{};
}

export namespace
	dyno
{
	template
		<	typename
				t_tBody
		>
	auto const constexpr inline
		default_concept_map
		<	Bodies3D::VolumeComputer
		,	t_tBody
		>
	=	make_concept_map
		(	"ComputeVolume"_s
		=	[]	(	t_tBody const
					&	i_rSelf
				)
				noexcept
			{	return
				i_rSelf
				.	ComputeVolume
					()
				;
			}
		)
	;
}

export namespace
	Bodies3D
{
	using
		Body3D
	=	dyno::poly
		<	VolumeComputer
		,	dyno::local_storage
			<	5uz * sizeof(Float)
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
		.	virtual_
			(	"ComputeVolume"_s
			)()
		;
	}
}
