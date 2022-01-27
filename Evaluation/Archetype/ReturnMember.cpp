export module Evaluation.Archetype.ReturnMember;

export import Function.ConstantIDMap;
export import Archetype.Instance;

export namespace
	Function
{
	using ::ID::operator""_id;

	/// simply returns a member
	auto inline
		Body
		(	FunctionName<"ReturnMember">
		,	ArgumentDependencyInstance auto
				i_vObject
		)
	noexcept
	->	decltype(auto)
	{	using ::ID::operator""_id;
		return
			i_vObject
			[	"Member"_id
			]
		;
	}

	/// functions prefixed with Get return the datamember withouth get
	template
		<	::ID::Prefix<"Get">
				t_tGetter
		,	::ID::StringLiteral
				t_vDataMember
			=	(	"Get"_id
				-	t_tGetter
					{}
				).StringLiteral
		>
	auto constexpr
		MapAddress
		(	t_tGetter
		,	Archetype::HasDataMember<t_vDataMember>	auto const
			&	i_rObject
		)
	{
		using
			MemberType
		=	decltype
			(	i_rObject
				[	::ID::MakeV
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


