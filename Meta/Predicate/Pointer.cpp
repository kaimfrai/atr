export module Meta.Predicate.Pointer;

export import Meta.Predicate.Arithmetic;
export import Meta.Predicate.Array;

namespace
	Meta
{
	namespace
		Trait
	{
		export template
			<	Term
					t_fOwnerConstraint
				=	IsUserDefined
			,	Term
					t_fMemberConstraint
				=	IsFunction
				or	IsObject
			>
		struct
			MemberPointer_Of_To final
		{
			template
				<	typename
						t_tMember
				,	typename
						t_tOwner
				>
			auto constexpr
			(	operator()
			)	(	TypeToken<t_tMember t_tOwner::*>
				)	const
			->	bool
			{	return
					t_fOwnerConstraint(Type<t_tOwner>)
				and	t_fMemberConstraint(Type<t_tMember>)
				;
			}

			template
				<	typename
						t_tEntity
				>
			auto constexpr
			(	operator()
			)	(	TypeToken<t_tEntity>
				)	const
			->	bool
			{	return false;	}
		};

		export template
			<	Term
					t_fMemberConstraint
			>
		using
			MemberPointer_To
		=	MemberPointer_Of_To
			<	IsUserDefined
			,	t_fMemberConstraint
			>
		;

		export template
			<	Term
					t_fConstraint
				=	IsAddressable
			>
		struct
			Pointer_To
		{
			template
				<	typename
						t_tEntity
				>
			auto constexpr
			(	operator()
			)	(	TypeToken<t_tEntity>
						i_vType
				)	const
			->	bool
			{	if	constexpr(not ::std::is_pointer_v<t_tEntity>)
					return false;
				else
					return
					t_fConstraint
					(	RemovePointer(i_vType)
					);
			}
		};
	}

	export Term constexpr inline
		IsMemberPointer
	=	Term{ Trait::MemberPointer_Of_To<>{} }
	and	IsIndirection
	;

	export template
		<	Term
				t_fMemberConstraint
		>
	Term constexpr inline
		IsMemberPointer_To
	=	Term{ Trait::MemberPointer_To<t_fMemberConstraint>{} }
	and	IsMemberPointer
	;

	export Term constexpr inline
		IsFreeIndirection
	=	not
		Term{Trait::MemberPointer_Of_To<>{}}
	and	IsIndirection
	;

	export Term constexpr inline
		IsPointer
	=	Term{Trait::Pointer_To<>{}}
	and	IsFreeIndirection
	;

	export Term constexpr inline
		IsNullPointer
	=	not
		Term{Trait::Pointer_To<>{}}
	and	IsFreeIndirection
	;
}
