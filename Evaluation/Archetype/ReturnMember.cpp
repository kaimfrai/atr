export module Evaluation.Archetype.ReturnMember;

export import ATR.ConstantIDMap;
export import ATR.Instance;
export import ATR.Concatenate;

export namespace
	ATR
{
	using ATR::operator""_id;

	/// simply returns a member
	auto inline
		Body
		(	FunctionName<"ReturnMember">
		,	ArgumentDependencyInstance auto
				i_vObject
		)
	noexcept
	->	decltype(auto)
	{	return
		i_vObject
		(	"Member"_id
		);
	}

	/// functions prefixed with Get return the datamember withouth get
	template
		<	ProtoPrefixID<"Get">
				t_tGetter
		,	StringLiteral
				t_vDataMember
			=	(	"Get"_id
				-	t_tGetter
					{}
				).StringLiteral
		>
	auto constexpr
		MapAddress
		(	t_tGetter
		,	ATR::HasDataMember<t_vDataMember>	auto const
			&	i_rObject
		)
	{
		using
			MemberType
		=	decltype
			(	i_rObject
				[	ID_V
					<	t_vDataMember
					>
				]
			)
		;

		auto constexpr
			fResolveAlias
		=	[]
			{
				if constexpr
					(	requires
						{	MemberType::StringLiteral;
						}
					)
				{	return
						MemberType::StringLiteral
					;
				}
				else
					return
						t_vDataMember
					;
			}
		;

		return
			DependencyAddress
			{	StaticDependencyInfo
				<	"ReturnMember"
				>
			,	ArgumentDependencyInfo
				<	decltype(i_rObject)
				,	MapDataID(fResolveAlias()) ->* "Member"
				>
			}
		;
	}
}


