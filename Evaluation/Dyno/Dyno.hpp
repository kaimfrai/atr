export module Evaluation.Dyno;

export import Evaluation.Shared;
export import Evaluation.Dyno.Library;

namespace
	Bodies3D
{
	using namespace
		dyno::literals
	;

	export struct
		VolumeComputer
	:	decltype(
			dyno::requires_
			(	"ComputeVolume"_s
			=	dyno::method
				<	auto
						() const
					//	noexcept
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
			{	return
					i_rSelf
					.	ComputeVolume
						()
				;
			}
		)
	;
}
