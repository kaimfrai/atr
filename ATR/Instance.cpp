export module ATR.Instance;

import ATR.Address;
import ATR.Base;
import ATR.Layout.Create;
import ATR.Layout.Offset;
import ATR.Member.Composition;
import ATR.Member.Storage;

import Meta.ID;
import Meta.String.Hash;

using ::ATR::Layout::CreateType;
using ::ATR::Member::ProtoDynamicMember_Of;
using ::ATR::Member::ProtoStaticMember_Of;

using ::Meta::ProtoID;
using ::Meta::String::ImplicitHash;

export namespace
	ATR
{
	template
		<	ProtoID
				t_tTypeName
		,	typename
			...	t_tpDistrict
		>
	struct
		Instance
	:	Base
		<	CreateType
			<	0
			,	t_tTypeName
			,	t_tpDistrict
				...
			>
		>
	,	t_tpDistrict
		::	template
			Guard
			<	Instance
				<	t_tTypeName
				,	t_tpDistrict
					...
				>
			>
		...
	{
		auto static constexpr inline
		&	Composition
		=	Member::Composition_Of
			<	t_tTypeName
			,	t_tpDistrict
				...
			>
		;

		t_tTypeName static constexpr inline
			TypeName
		{};

		template
			<	ImplicitHash
					t_vMemberName
			>
		requires
			(	Composition
				.	FindMemberInfo
					(	t_vMemberName
					)
				.	IsValid
					()
			)
		auto static constexpr inline
			Offset_Of
		=	Layout::Offset_For
			<	Layout::DistrictType
				<	t_tTypeName
				,	t_tpDistrict
					...
				>
			,	Composition
				.	FindMemberInfo
					(	t_vMemberName
					)
			>
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	this auto
				&&	i_rThis
			,	ProtoDynamicMember_Of<t_tTypeName, t_tpDistrict...> auto
					i_vMemberID
			)
			noexcept
		->	decltype(auto)
		{	return
				static_cast<decltype(i_rThis)>
				(	i_rThis
				)
				.	Layout
			->*	Offset_Of<i_vMemberID>
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator[]
		)	(	ProtoStaticMember_Of<t_tTypeName, t_tpDistrict...> auto
					i_vMemberID
			)
			noexcept
		->	decltype(auto)
		{	return
				Offset_Of<i_vMemberID>
				()
			;
		}

		template
			<	ProtoID
					t_tFunctionName
			,	typename
				...	t_tpArgument
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator()
		)	(	this auto
				&&	i_rThis
			,	t_tFunctionName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)
			noexcept
		->	decltype(auto)
		requires
			ProtoAddress
			<	t_tFunctionName
			,	decltype(i_rThis)
			,	t_tpArgument
				...
			>
		{	return
				Address
				<	t_tFunctionName
				,	decltype(i_rThis)
				,	t_tpArgument
					...
				>(	ForwardErased
					(	i_rThis
					)
				,	ForwardErased
					(	i_rpArgument
					)
					...
				)
			;
		}
	};
}
