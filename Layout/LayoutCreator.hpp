#pragma once

#include <Meta/Template.hpp>

#include <Pack/Map.hpp>
#include <PackTemplate/Type.hpp>
#include <Meta/TypeInfo.hpp>

#include <Layout/DataMemberLayoutSplit.hpp>
#include <Layout/Fork.hpp>
#include <Layout/DataMember.hpp>

namespace
	Layout
{
	/// designates an empty layout
	struct
		Empty
	{};
	
	///	simply creates an empty layout
	[[nodiscard]]
	constexpr
	Meta::TypeInstance auto
		CreateLayout
		(	PackTemplate::TypeInstance auto
		)
	{	return
			Meta::T<Empty>
		;
	}
	
	/// simply returns a single DataMember
	[[nodiscard]]
	constexpr
	Meta::TypeInstance auto
		CreateLayout
		(	PackTemplate::TypeInstance auto
		,	DataMemberInfoInstance auto
				i_vDataMember
		)
	{	return
			i_vDataMember
		;
	}
	
	/// function object fowarding to CreateLayout overloads
	template
		<	PackTemplate::TypeInstance
				t_tSplitTemplate
		>
	struct
		[[nodiscard]]
		LayoutCreator
	{
		constexpr
			LayoutCreator
			()
		=	default
		;
		
		constexpr
		explicit
			LayoutCreator
			(	t_tSplitTemplate
			)
		{}
		
		constexpr
		Meta::TypeInstance auto
			operator()
			(	DataMemberInfoInstance auto
				...	i_vpDataMember
			)	const
		{	return
				CreateLayout
				(	Stateless::Copy
					<	t_tSplitTemplate
					>
				,	i_vpDataMember
					...
				)
			;
		}
	};
	
	/// if the sequence contains one or more DataMemberInfoPacks, all DataMemberInfos
	/// will be spread separately over the CreateLayout overload
	[[nodiscard]]
	constexpr
	Meta::TypeInstance auto
		CreateLayout
		(	PackTemplate::TypeInstance auto
				i_vSplitTemplate
		,	Config auto
			...	i_vpLayoutConfig
		)
	{	return
			Pack::Apply
			(	Pack::Concat
				(	i_vpLayoutConfig
					...
				)
			,	LayoutCreator
				{	i_vSplitTemplate
				}
			)
		;
	}
	
	/// two or more DataMembers will be branched
	[[nodiscard]]
	constexpr
	Meta::TypeInstance auto
		CreateLayout
		(	PackTemplate::TypeInstance auto
				i_vSplitTemplate
		,	DataMemberInfoInstance auto
				i_vFirst
		,	DataMemberInfoInstance auto
				i_vSecond
		,	DataMemberInfoInstance auto
			...	i_vpOther
		)
	{
		Stateless::Pair auto const
		[	vNorthSubPack
		,	vSouthSubPack
		]=	DataMemberLayoutSplit
			(	i_vFirst
			,	i_vSecond
			,	i_vpOther
				...
			)
		;
		
		return
			i_vSplitTemplate
			(	CreateLayout
				(	i_vSplitTemplate
				,	vNorthSubPack
				)
			,	CreateLayout
				(	i_vSplitTemplate
				,	vSouthSubPack
				)
			)
		;
	}
}
