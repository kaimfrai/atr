export module ATR.DataDependencyItem;

export import ATR.ID;
export import Stateless.Map;
export import Meta.Concept.Empty;

export namespace
	ATR
{
	/// maps a DataID to a MemberOffset
	template
		<	ProtoID
				t_tDataID
		,	// could be a ATR::MemberOffset
			// or a wrapper around a pointer to member
			Meta::ProtoStateless
				t_tMemberOffset
		>
	struct
		DataDependencyItem
	:	Stateless::MapToConstant
		<	t_tDataID
		,	t_tMemberOffset
		>
	{
		constexpr
		(	DataDependencyItem
		)	()
		=	default;

		explicit constexpr
		(	DataDependencyItem
		)	(	t_tDataID
			,	t_tMemberOffset const
				&	i_rMemberOffset
			)
		:	Stateless::MapToConstant<t_tDataID, t_tMemberOffset>
			{	i_rMemberOffset
			}
		{}
	};

	template
		<	ProtoID
				t_tDataID
		,	// could be a ATR::MemberOffset
			// or a wrapper around a pointer to member
			Meta::ProtoStateless
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
	=	Std::TypePackInstanceOf
		<	t_tMapItem
		,	DataDependencyItem
		>
	;
}
