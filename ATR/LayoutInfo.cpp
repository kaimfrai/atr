export module ATR.LayoutInfo;

export import ATR.StringLiteral;
export import ATR.ID;
export import ATR.DataMember;
export import ATR.LayoutCreator;

export import Meta.ValueInfo;
export import Meta.Template;
export import Meta.Type;
export import Std;

export namespace
	ATR
{
	/// maps a string literal to a Layout
	template
		<	StringLiteral
		>
	ATR::DataMemberConfig constexpr inline
		LayoutConfig
	=	ATR::DataMemberConfig<0uz>
		{}
	;

	[[nodiscard]]
	auto constexpr
	(	CreateLayout
	)	(	ProtoID auto
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
		ATR::CreateLayout
		(	i_vSplitTemplate
		,	Meta::V
			<	vConfig
			>
		);
	}


	/// the type mapped to the string literal by LayoutInfo
	template
		<	ProtoID
				t_tTypeID
		>
	using
		CreateLayoutType
	=	Meta::TypeEntity
		<	CreateLayout
			(	t_tTypeID{}
			,	Meta::Template
				<	ATR::Fork
				>()
			)
		>
	;

	/// customization point for specifying layout types
	template
		<	typename
				t_tObject
		>
	Meta::TypeInstance auto constexpr inline
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
	Meta::TypeInstance auto constexpr inline
		UnderlyingLayout
		<	t_tObject
		>
	=	UnderlyingLayout
		<	::std::remove_cv_t
			<	t_tObject
			>
		>
	;

	template
		<	Std::Reference
				t_tObject
		>
	Meta::TypeInstance auto constexpr inline
		UnderlyingLayout
		<	t_tObject
		>
	=	UnderlyingLayout
		<	::std::remove_reference_t
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
		decltype
		(	UnderlyingLayout
			<	t_tObject
			>
		)
	::	Type
	;
}
