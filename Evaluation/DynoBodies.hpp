#pragma once

#include <Evaluation/CRTPBodies.hpp>

#include <dyno.hpp>

#include "Shared.hpp"

namespace
	Bodies3D
{
	using namespace
		dyno::literals
	;
	
	struct
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

namespace
	dyno
{
	template
		<	typename
				t_tBody
		>
	constexpr
	auto const
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
