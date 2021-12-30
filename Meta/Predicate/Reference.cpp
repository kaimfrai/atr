export module Meta.Predicate.Reference;

export import Meta.Predicate.Referable;

namespace
	Meta
{
	namespace
		Trait
	{
		export template
			<	Term
					t_fConstraint
				=	IsReferable
			>
		struct
			Reference_To final
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
			{	if	constexpr(not ::std::is_reference_v<t_tEntity>)
					return false;
				else
					return
					t_fConstraint
					(	RemoveReference(i_vType)
					)
				;
			}
		};

		struct
			LValueReference final
		{
			template
				<	typename
						t_tEntity
				>
			auto constexpr
			(	operator()
			)	(	TypeToken<t_tEntity>
				)	const
			->	bool
			{	return std::is_lvalue_reference_v<t_tEntity>;	}
		};
	}

	export Term constexpr inline
		IsReference
	=	Term{Trait::Reference_To<>{}}
	and	not
		IsAddressable
	;

	export Term constexpr inline
		IsLValueReference
	=	Term{Trait::LValueReference{}}
	and	IsReference
	;

	export Term constexpr inline
		IsRValueReference
	=	not
		Term{Trait::LValueReference{}}
	and	IsReference
	;

	export Term constexpr inline
		IsQualifiedFunction
	=	not
		Term{Trait::Reference_To<>{}}
	and	not
		IsAddressable
	;
}
