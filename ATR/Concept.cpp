export module ATR.Concept;

export import Meta.Concept.Category;
export import Meta.Logic;
export import Meta.Constraint;
export import ATR.ID;

export namespace
	ATR::Trait
{
	template
		<	ProtoID
				t_tDataID
		>
	struct
		HasDataMember final
	:	Meta::Trait::LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	Meta::TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	requires
				{	::std::declval<t_tEntity>()
					[	t_tDataID{}
					];

				}
			;
		}
	};
}

export namespace
	ATR
{
	template
		<	StringLiteral
			...	t_tpMemberName
		>
	Meta::Term constexpr inline
		HasDataMember
	=(	...
	and	Meta::Term
		{	Trait::HasDataMember
			<	ID_T<t_tpMemberName>
			>{}
		}
	);

	template
		<	typename
				t_tProto
		,	StringLiteral
			...	t_tpMemberName
		>
	concept
		ProtoObjectMember
	=	Meta::ProtoConstraint
		<	t_tProto
		,	HasDataMember
			<	t_tpMemberName
				...
			>
		>
	;
}
