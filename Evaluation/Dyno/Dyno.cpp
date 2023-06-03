export module Evaluation.Dyno;

export import Evaluation.Dependency.Dyno;
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

using namespace dyno::literals;

export namespace
	Bodies3D
{
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
