export module ATR.LayoutInfo;

export import ATR.StringLiteral;
export import ATR.ID;
export import ATR.DataMember;
export import ATR.Fork;
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


	template
		<	DataMemberConfig
				t_vConfig
		>
	[[nodiscard]]
	auto constexpr
	(	CreateLayout
	)	()
	->	decltype(auto)
	{	return
		[]	<	Meta::USize
				...	t_npIndex
			>(	Meta::IndexToken<t_npIndex...>
			)
		{
			return
			Fork
			<	DataMember
				<	ID_T
					<	StringLiteral<t_vConfig[t_npIndex].Object.Name.size() + 1uz>
						{	t_vConfig[t_npIndex].Object.Name.data()
						}
					>
				,	Meta::RestoreTypeEntity
					<	t_vConfig[t_npIndex].Object.Type
					>
				>
				...
			>{};
		}(	Meta::Sequence
			(	Meta::Index<t_vConfig.size()>
			)
		);
	}

	/// the type mapped to the string literal by LayoutInfo
	template
		<	ProtoID
				t_tTypeID
		>
	using
		CreateLayoutType
	=	decltype
		(	CreateLayout
			<	LayoutConfig
				<	t_tTypeID
				::	StringLiteral
				>
			>()
		)
	;

	/// customization point for specifying layout types
	template
		<	typename
				t_tObject
		>
	Meta::TypeToken
	<	typename
		::std::remove_cvref_t<t_tObject>
	::	LayoutType
	>	constexpr inline
		UnderlyingLayout
	{};

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
