export module Archetype.LayoutInfo;

export import ID.Type;
export import ID.StringLiteral;
export import Layout.Concatenate;
export import Layout.LayoutCreator;
export import Layout.DataMember;

export import Meta.Template;
export import Pack.Accumulate;
export import Meta.TypeInfo;
export import Std.QualifierTemplate;

export namespace
	Archetype
{
	/// maps a string literal to a Layout
	template
		<	ID::StringLiteral
		>
	Layout::DataMemberConfig constexpr inline
		LayoutConfig
	=	Layout::DataMemberConfig<0uz>
		{}
	;

	/// uses the LayoutConfig mapped to the given literal and prefixes it with that literal
	template
		<	ID::StringLiteral
				i_vType
		,	ID::StringLiteral
				i_vPrefix
			=	i_vType
		>
	Layout::DataMemberConfig constexpr inline
		PrefixedLayoutConfig
	=	Layout::InfixLayoutConfig
		(	Meta::V<LayoutConfig<i_vType>>
		,	ID::MakeV<ID::Extend, i_vPrefix>
		,	ID::MakeV<ID::Extend, "">
		)
	;

	/// uses the LayoutConfig mapped to the given literal and suffixes it with that literal
	template
		<	ID::StringLiteral
				i_vType
		,	ID::StringLiteral
				i_vSuffix
			=	i_vType
		>
	Layout::DataMemberConfig constexpr inline
		SuffixedLayoutConfig
	=	Layout::InfixLayoutConfig
		(	Meta::V<LayoutConfig<i_vType>>
		,	ID::MakeV<ID::Extend, "">
		,	ID::MakeV<ID::Extend, i_vSuffix>
		)
	;

	[[nodiscard]]
	auto constexpr
		CreateLayout
		(	ID::TypeInstance auto
				i_vTypeID
		,	PackTemplate::TypeInstance auto
 				i_vSplitTemplate
		)
	{
		auto constexpr
			vConfig
		=	LayoutConfig
			<	i_vTypeID
			.	RawArray
			>
		;

		return
		Layout::CreateLayout
		(	i_vSplitTemplate
		,	Meta::V
			<	vConfig
			>
		);
	}


	/// the type mapped to the string literal by LayoutInfo
	template
		<	ID::TypeInstance
				t_tTypeID
		>
	using
		CreateLayoutType
	=	Meta::TypeEntity
		<	CreateLayout
			(	t_tTypeID{}
			,	Meta::Template
				<	Layout::Fork
				>()
			)
		>
	;

	/// customization point for specifying layout types
	template
		<	typename
				t_tObject
		>
	constexpr inline
	Meta::TypeInstance auto
		UnderlyingLayout
	=	Meta::Type
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
