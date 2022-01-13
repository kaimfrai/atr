export module Archetype.LayoutInfo;

export import ID.Type;
export import ID.StringLiteral;
export import Layout.Concatenate;
export import Layout.LayoutCreator;
export import Layout.DataMember;

#include <Meta/Template.hpp>
#include <Pack/Accumulate.hpp>
#include <Meta/TypeInfo.hpp>
#include <Std/QualifierTemplate.hpp>

export namespace
	Archetype
{
	/// maps a string literal to a Layout
	template
		<	ID::StringLiteral
		>
	constexpr inline
	Layout::Config auto
		LayoutConfig
	=	Layout::DataMemberPack
		<>{}
	;

	/// uses the LayoutConfig mapped to the given literal and prefixes it with that literal
	template
		<	ID::StringLiteral
				i_vType
		,	ID::StringLiteral
				i_vPrefix
			=	i_vType
		>
	constexpr inline
	Layout::Config auto
		PrefixedLayoutConfig
	=	Layout::PrefixV
		<	i_vPrefix
		>
	|	LayoutConfig
		<	i_vType
		>
	;

	/// uses the LayoutConfig mapped to the given literal and suffixes it with that literal
	template
		<	ID::StringLiteral
				i_vType
		,	ID::StringLiteral
				i_vSuffix
			=	i_vType
		>
	constexpr inline
	Layout::Config auto
		SuffixedLayoutConfig
	=	LayoutConfig
		<	i_vType
		>
	|	Layout::SuffixV
		<	i_vSuffix
		>
	;

	/// the type mapped to the string literal by LayoutInfo
	template
		<	ID::TypeInstance
				t_tTypeID
		>
	using
		CreateLayoutType
	=	typename
		decltype(
			Layout::CreateLayout
			(	Meta::Template
				<	Layout::Fork
				>()
			,	LayoutConfig
				<	t_tTypeID
					::	RawArray
				>
			)
		)::	Type
	;

	/// customization point for specifying layout types
	template
		<	typename
				t_tObject
		>
	constexpr inline
	Meta::TypeInstance auto
		UnderlyingLayout
	=	Meta::T
		<	typename
			t_tObject
			::	LayoutType
		>
	;

	template
		<	Std::CVObject
				t_tObject
		>
	constexpr inline
	Meta::TypeInstance auto
		UnderlyingLayout
		<	t_tObject
		>
	=	UnderlyingLayout
		<	std::remove_cv_t
			<	t_tObject
			>
		>
	;

	template
		<	Std::Reference
				t_tObject
		>
	constexpr inline
	Meta::TypeInstance auto
		UnderlyingLayout
		<	t_tObject
		>
	=	UnderlyingLayout
		<	std::remove_reference_t
			<	t_tObject
			>
		>
	;

	/// extracts the LayoutType from a possibly reference qualified Object
	/// preserves cv-qualifiers but not reference qualifiers
	template
		<	Std::ObjectOrReference
				t_tObject
		>
	using
		UnderlyingLayoutType
	=	typename
		decltype(
			UnderlyingLayout
			<	t_tObject
			>
		)
		::	Type
	;
}
