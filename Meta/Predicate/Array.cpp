export module Meta.Predicate.Array;

export import Meta.Predicate.Scalar;

namespace
	Meta
{
	namespace
		Trait
	{
		export template
			<	Term
					t_fConstraint
				=	IsObject
			>
		struct
			Array_Of final
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
			{	if	constexpr(not ::std::is_array_v<t_tEntity>)
					return false;
				else
					return
					t_fConstraint
					(	RemoveExtent
						(	i_vType
						)
					);
			}
		};

		export template
			<	USize
					t_nExtent
				=	0uz
			,	USize
					t_nRank
				=	0uz
			>
		struct
			Array_ExtentGreater final
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
			{	if	constexpr
					(	not
						::std::is_array_v<t_tEntity>
					or	(	::std::rank_v<t_tEntity>
						<=	t_nRank
						)
					)
					return false;
				else
					return
					(	::std::extent_v
						<	t_tEntity
						,	t_nRank
						>
					>	t_nExtent
					);
			}
		};
	}

	export Term constexpr inline
		IsArray
	=	Term{Trait::Array_Of<>{}}
	and	IsCompoundObject
	;

	export Term constexpr inline
		IsUserDefined
	=	not
		Term{Trait::Array_Of<>{}}
	and	IsCompoundObject
	;

	export Term constexpr inline
		IsBoundedArray
	=	Term{Trait::Array_ExtentGreater<0uz>{}}
	and	IsArray
	;

	export Term constexpr inline
		IsUnboundedArray
	=	not
		Term{Trait::Array_ExtentGreater<0uz>{}}
	and	IsArray
	;
}
