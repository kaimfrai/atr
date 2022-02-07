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
	template
		<	char const
			&
			...	t_rpLetter
		>
	auto constexpr
		MapAddress
		(	ID
			<	Char('G')
			,	Char('e')
			,	Char('t')
			,	t_rpLetter
				...
			>
		,	HasDataMember
			<	ID<t_rpLetter...>
			>	auto const
			&	i_rObject
		)
	{
		using
			MemberName
		=	ID<t_rpLetter...>
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


