export module Meta.Concept.TrivialCustom;

export import Meta.Concept.Trivial;

export namespace
	Meta
{
	///	Custom types that are trivially destructible.
	///	Orders above ProtoDestructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyDestructibleCustom
	=		Proto::TriviallyDestructible<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are trivially default intializable.
	///	Orders above ProtoTriviallyDestructible and ProtoDefaultInitializableCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyDefaultInitializableCustom
	=		Proto::TriviallyDefaultInitializable<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are trivially move constructible as a member.
	///	Orders above ProtoTriviallyDestructibleCustom and ProtoMoveConstructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyMoveConstructibleCustom
	=		Proto::TriviallyMoveConstructible<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are trivially copy constructible as a member.
	///	Orders above ProtoTriviallyMoveConstructibleCustom and ProtoCopyConstructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyCopyConstructibleCustom
	=		Proto::TriviallyCopyConstructible<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are trivially movable as a member.
	///	Orders above ProtoTriviallyMoveConstructibleCustom and ProtoMovableCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyMovableCustom
	=		Proto::TriviallyMovable<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are trivially copyable as a member.
	///	Orders above ProtoTriviallyMovableCustom, ProtoTriviallyCopyConstructibleCustom, and ProtoCopyableCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyCopyableCustom
	=		Proto::TriviallyCopyable<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are trivial as a member
	///	Orders above ProtoTriviallyCopyableCustom, ProtoDefaultInitializableCustom, and ProtoSemiregularCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTrivialCustom
	=		Proto::Trivial<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are trivial and regular as a member.
	///	Orders above ProtoSemiregularCustom and ProtoTrivialCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTrivialRegularCustom
	=		Proto::TrivialRegular<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;
}
