export module ATR.District.ExcludingHeap;

import ATR.District.Info;
import ATR.District.MoveHeapGuard;

import ATR.Member.AlignBuffer;
import ATR.Member.CountedType;
import ATR.Member.LayoutList;

import Meta.String.Hash;
import Meta.Token.Type;
import Meta.Token.TypeID;

using ::Meta::String::Hash;
using ::Meta::String::ImplicitHash;
using ::Meta::Type;
using ::Meta::TypeID;
using ::Meta::TypeToken;

export namespace
	ATR::District
{
	template
		<	template
				<	typename
				,	typename
					...
				>
			typename
				t_t1Instance
		,	typename
				t_tTypeName
		,	typename
			...	t_tpDistrict
		>
	[[nodiscard]]
	auto constexpr inline
	(	DistrictIndexOf
	)	(	TypeToken<t_t1Instance<t_tTypeName, t_tpDistrict...>>
		,	TypeID
				i_vDistrict
		)
		noexcept
	->	short
	{
		TypeID static constexpr
			vDistrictList
			[]
		{	Type<t_tpDistrict>
			...
		};

		for	(	short
					vDistrictIndex
				=	0
			;
			;	++	vDistrictIndex
			)
		{	if	(	vDistrictList
					[	vDistrictIndex
					]
				==	i_vDistrict
				)
			{	return
					vDistrictIndex
				+	1
				;
			}
		}
	}


	template
		<	Info
				t_vInfo
		,	ImplicitHash
			...	t_vpExcluded
		>
	struct
		ExcludingHeap
	{
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
		=	Type<void*>
		;

		template
			<	typename
					t_tInstance
			>
		using
			Guard
		=	MoveHeapGuard
			<	DistrictIndexOf
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
