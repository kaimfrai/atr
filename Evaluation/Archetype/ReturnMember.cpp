export module Evaluation.Archetype.ReturnMember;

export import ATR.ConstantIDMap;
export import ATR.Instance;
export import ATR.Concatenate;

export namespace
	ATR
{
	/// simply returns a member
	auto inline
		Body
		(	FunctionName<"ReturnMember">
		,	DependencyInstance auto
				i_vObject
		)
	noexcept
	->	decltype(auto)
	{	return
		i_vObject
		(	"Member"_id
		);
	}

	/// functions prefixed with Get return the datamember without get
	auto constexpr
		MapAddress
		(	ProtoPrefixID<"Get"> auto
				i_vGet
		,	ATR::HasDataMember
			<	decltype
				(	"Get"_id
				-	i_vGet
				)
			>	auto const
			&	i_rObject
		)
	{
		using
			MemberName
		=	decltype
			(	"Get"_id
			-	i_vGet
			)
		;
		using
			MemberType
		=	decltype
			(	i_rObject
				[	MemberName
					{}
				]
			)
		;

		auto constexpr
			fResolveAlias
		=	[]{	if constexpr
					(	requires
						{	MemberType::StringView;
						}
					)
					return MemberType::StringView;
				else
					return MemberName::	StringView;
			}
		;

		return
		DependencyAddress
		{	StaticDependencyInfo
			<	"ReturnMember"
			>
		,	ArgumentDependencyInfo
			<	decltype(i_rObject)
			,	MapDataID(fResolveAlias()) ->* "Member"_id
			>
		};
	}
}


