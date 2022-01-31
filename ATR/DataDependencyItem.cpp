export module ATR.DataDependencyItem;

export import ATR.ID;
export import Stateless.Map;
export import Stateless.Type;
export import Std.FunctionTraits;

export namespace
	ATR
{
	/// maps a DataID to a MemberOffset
	template
		<	ProtoID
				t_tDataID
		,	// could be a ATR::MemberOffset
			// or a wrapper around a pointer to member
			Stateless::Type
				t_tMemberOffset
		>
	struct
		DataDependencyItem
	:	Stateless::MapToStateless
		<	t_tDataID
		,	t_tMemberOffset
		>
	{
		constexpr
			DataDependencyItem
			()
		=	default
		;

		constexpr
		explicit
			DataDependencyItem
			(	t_tDataID
			,	t_tMemberOffset
			)
		{}
	};

	template
		<	ProtoID
				t_tDataID
		,	// could be a ATR::MemberOffset
			// or a wrapper around a pointer to member
			Stateless::Type
				t_tMemberOffset
		>
	(	DataDependencyItem
	)	(	t_tDataID
		,	t_tMemberOffset
		)
	->	DataDependencyItem
		<	t_tDataID
		,	t_tMemberOffset
		>
	;

	/// map items that take a DataID
	template
		<	typename
				t_tMapItem
		>
	concept
		DataDependencyMapItemInstance
	=	Stateless::MapItemInstance
		<	t_tMapItem
		>
	and	Std::TypePackInstanceOf
		<	t_tMapItem
		,	DataDependencyItem
		>
	;
}
