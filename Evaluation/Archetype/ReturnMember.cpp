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
		,	ProtoBoundDependency auto
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
		,	HasDataMember
			<	ID<t_rpLetter...>
			>	t_tObject
		>
	auto constexpr
	(	MapAddress
	)	(	ID
			<	Char('G')
			,	Char('e')
			,	Char('t')
			,	t_rpLetter
				...
			>
		,	Argument<t_tObject> const&
		)
	{
		using
			MemberName
		=	ID<t_rpLetter...>
		;
		using
			MemberType
		=	decltype
			(	::std::declval<t_tObject const&>()
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
		&Signature
		<	StaticDependencyInfo
			<	"ReturnMember"
			>
		,	ArgumentDependencyInfo
			<	t_tObject const&
			,	MapDataID(fResolveAlias()) ->* "Member"_id
			>
		>;
	}
}


