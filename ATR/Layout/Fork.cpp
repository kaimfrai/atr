export module ATR.Layout.Fork;

import ATR.Layout.Offset;

import Meta.Memory.Constraint;
import Meta.Memory.Size;

using ::Meta::BitSize;
using ::Meta::Memory::BitSize_Of;

export namespace
	ATR::Layout
{
	template
		<	typename
				t_tNorth
		,	typename
				t_tSouth
		>
	struct
		Fork
	{
		using
			NorthType
		=	t_tNorth
		;

		NorthType
			NorthArea
		;

		using
			SouthType
		=	t_tSouth
		;

		SouthType
			SouthArea
		;

		// TODO this needs to use deducing this
		template
			<	BitSize
					t_vOffset
			,	typename
					t_tData
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator->*
		)	(	auto
				&&	i_rFork
			,	Offset<t_vOffset, t_tData>
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{
			auto static constexpr
				vNorthSize
			=	BitSize_Of
				<	NorthType
				>
			;
			if	constexpr
				(	t_vOffset
				<	vNorthSize
				)
			{	return
					static_cast<decltype(i_rFork)>
					(	i_rFork
					)
					.	NorthArea
				->*	i_vOffset
				;
			}
			else
			{	return
					static_cast<decltype(i_rFork)>
					(	i_rFork
					)
					.	SouthArea
				->*	Offset
					<		t_vOffset
						-	vNorthSize
					,	t_tData
					>{}
				;
			}
		}
	};
}
