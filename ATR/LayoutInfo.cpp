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
	ATR::DataMemberConfig<0uz> constexpr inline
		LayoutConfig
	{};

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
			::std::remove_cvref_t<t_tObject>
		::	LayoutType
		>
	;

	/// extracts the LayoutType from a possibly reference qualified Object
	/// preserves cv-qualifiers but not reference qualifiers
	template
		<	typename
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
