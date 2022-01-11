export module Meta.Concept.RegularCustom;

export import Meta.Concept.Regular;

export namespace
	Meta
{
	///	Custom types that are destructible.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoDestructibleCustom
	=		Proto::Destructible<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are default intializable.
	///	Orders above ProtoDestructible.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoDefaultInitializableCustom
	=		Proto::DefaultInitializable<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are move constructible as a member.
	///	Orders above ProtoDestructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoMoveConstructibleCustom
	=		Proto::MoveConstructible<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are copy constructible as a member.
	///	Orders above ProtoMoveConstructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoCopyConstructibleCustom
	=		Proto::CopyConstructible<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are movable as a member.
	///	Orders above ProtoMoveConstructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoMovableCustom
	=		Proto::Movable<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are copyable as a member.
	///	Orders above ProtoMovableCustom and ProtoCopyConstructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoCopyableCustom
	=		Proto::Copyable<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are semiregular as a member
	///	Orders above ProtoCopyableCustom and ProtoDefaultInitializableCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoSemiregularCustom
	=		Proto::Semiregular<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are semiregular as a member.
	///	Orders above ProtoSemiregularCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoRegularCustom
	=		Proto::Regular<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;
}
