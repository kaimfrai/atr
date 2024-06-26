export module ATR.District.ExcludingHeap;

import ATR.District.Info;
import ATR.District.MoveHeapGuard;

import Meta.String.Hash;
import Meta.Token.Type;
import Meta.Token.TypeID;

using ::Meta::String::Hash;
using ::Meta::String::ImplicitHash;
using ::Meta::Type;
using ::Meta::TypeID;

export namespace
	ATR::District
{
	template
		<	Info
				t_vInfo
		,	ImplicitHash
			...	t_vpExcluded
		>
	struct
		ExcludingHeap
	{
		static_assert
		(	t_vInfo
			.	Multiplier
		==	1uz
		,	"Overalignment not yet supported for MoveHeapGuard"
		);

		Hash static constexpr inline
			DistrictName
		=	t_vInfo
			.	Name
		;

		Hash static constexpr inline
			HostDistrictName
		=	t_vInfo
			.	Host
		;

		TypeID static constexpr inline
			NestedType
		=	Type
			<	Heap
				<	void
				>
			>
		;

		template
			<	typename
					t_tInstance
			>
		using
			Vanguard
		=	MoveHeapGuard
			<	ERole
				::	Vanguard
			,	DistrictIndexOf
				(	Type<t_tInstance>
				,	Type<ExcludingHeap>
				)
			,	t_tInstance
			>
		;

		template
			<	typename
					t_tInstance
			>
		using
			Rearguard
		=	MoveHeapGuard
			<	ERole
				::	Rearguard
			,	DistrictIndexOf
				(	Type<t_tInstance>
				,	Type<ExcludingHeap>
				)
			,	t_tInstance
			>
		;

		[[nodiscard]]
		auto static constexpr inline
		(	Hosts
		)	(	Hash
					i_vName
			)
			noexcept
		->	bool
		{	return
			(	...
			and	(	t_vpExcluded
				!=	i_vName
				)
			);
		}
	};
}
