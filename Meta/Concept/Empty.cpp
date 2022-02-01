export module Meta.Concept.Empty;

export import Meta.Concept.Regular;

export namespace
	Meta::Trait
{
	struct
		Empty final
	:	LiteralBase
	{
		using LiteralBase::operator();

		template
			<	ProtoCustom
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	std::is_empty_v
				<	Member<t_tEntity>
				>
			;
		}
	};
}

export namespace
	Meta::Proto
{
	template
		<	typename
				t_tProto
		>
	concept
		Empty
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Empty
				{	true
				}
			>
		>
	and	Custom<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Stateless
	=	Empty<t_tProto>
	and	DefaultInitializable<t_tProto>
	and	CopyConstructible<t_tProto>
	;
}

export namespace
	Meta
{

	///	Custom types that do not have a value representation.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoEmpty
	=	Proto::Empty<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that do not have a state and can be freely created, copied, moved and compared.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoStateless
	=	Proto::Stateless<t_tProto>
	or	Proto::None<t_tProto>
	;
}
