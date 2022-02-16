export module Meta.Type.Member;

export import Meta.Type;
export import Meta.Type.Entity;

export namespace
	Meta::Token
{
	template
		<	typename
				t_tMember
		>
	struct
		Member
	{
		static auto constexpr
		(	GetMember
		)	()
		->	TypeToken<t_tMember>
		{	return{};	}
	};

	template
		<	typename
				t_tOwner
		>
	struct
		Owner
	{
		static auto constexpr
		(	GetOwner
		)	()
		->	TypeToken<t_tOwner>
		{	return{};	}
	};

	template
		<	typename
				t_tMember
		,	typename
				t_tOwner
		>
	struct
		MemberPointer final
	:	CV
	,	Member<t_tMember>
	,	Owner<t_tOwner>
	{};

	template
		<	typename
				t_tMember
		,	typename
				t_tOwner
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tMember t_tOwner::*
			>
		)
	->	MemberPointer<t_tMember, t_tOwner>
	{	return{};	}

	template
		<	typename
				t_tMember
		,	typename
				t_tOwner
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tMember t_tOwner::* const
			>
		)
	->	MemberPointer<t_tMember, t_tOwner>
	{	return { .Const = true };	}

	template
		<	typename
				t_tMember
		,	typename
				t_tOwner
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tMember t_tOwner::* volatile
			>
		)
	->	MemberPointer<t_tMember, t_tOwner>
	{	return { .Volatile = true };	}

	template
		<	typename
				t_tMember
		,	typename
				t_tOwner
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tMember t_tOwner::* const volatile
			>
		)
	->	MemberPointer<t_tMember, t_tOwner>
	{	return { .Const = true, .Volatile = true };	}
}
