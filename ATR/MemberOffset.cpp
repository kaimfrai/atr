export module ATR.MemberOffset;

export import ATR.DataMember;
export import ATR.StringLiteral;

export import Std;
export import Meta.Integer;
export import Meta.Concept.Empty;

export namespace
	ATR
{
	/// function object retrieving a member from a void pointer
	template
		<	typename
				t_tMember
		>
	struct
		MemberOffset
	:	MemberOffset
		<	t_tMember const
		>
	{
		using MemberOffset<t_tMember const>::operator();
		using MemberOffset<t_tMember const>::Offset;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	void
				*	i_aObject
			)	const
			noexcept
		->	decltype(auto)
		{
			auto const
				aMemberAsChar
			=	static_cast
				<	char
					*
				>(	i_aObject
				)
			+	Offset
			;

			return
			*
			static_cast
			<	t_tMember
				*
			>(	static_cast
				<	void
					*
				>(	aMemberAsChar
				)
			);
		}
	};

	/// specialization for const only objects
	template
		<	typename
				t_tMember
		>
	struct
		MemberOffset
		<	t_tMember const
		>
	{
		Meta::USize
			Offset
		;

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	void const
				*	i_aObject
			)	const
			noexcept
		->	decltype(auto)
		{
			auto const
				aMemberAsChar
			=	static_cast
				<	char const
					*
				>(	i_aObject
				)
			+	Offset
			;

			return
			*
			static_cast
			<	t_tMember const
				*
			>(	static_cast
				<	void const
					*
				>(	aMemberAsChar
				)
			);
		}
	};

	template
		<	Meta::ProtoStateless
				t_tMember
		>
	struct
		MemberOffset
		<	t_tMember
		>
	{
		constexpr
		(	MemberOffset
		)	()
		=	default;

		explicit constexpr
		(	MemberOffset
		)	(	Meta::USize
			)
		{}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	void const*
			)	const
			noexcept
		->	decltype(auto)
		{	return
			t_tMember
			{};
		}
	};

	/// immitates syntax of pointer to member dereference
	template
		<	typename
				t_tMember
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	void
			*	i_aObject
		,	MemberOffset<t_tMember>
				i_vMemberOffset
		)
		noexcept
	->	decltype(auto)
	{	return
		i_vMemberOffset
		(	i_aObject
		);
	}

		/// immitates syntax of pointer to member dereference
	template
		<	typename
				t_tMember
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	void const
			*	i_aObject
		,	MemberOffset<t_tMember>
				i_vMemberOffset
		)
	noexcept
	->	decltype(auto)
	{	return
		i_vMemberOffset
		(	i_aObject
		);
	}

	auto constexpr
	(	MemberType
	)	(	StringView
				i_vName
		,	Meta::Value<DataMemberInfo const*>
				i_aBegin
		)
	->	Meta::EraseTypeToken
	{	//	it is assumed that the name is always contained
		for	(;	i_aBegin->Name != i_vName
			;	++i_aBegin
			)
		{}
		return i_aBegin->Type;
	}

	auto constexpr
	(	ByteOffset
	)	(	StringView
				i_vName
		,	Meta::Value<DataMemberInfo const*>
				i_aBegin
		)
	->	Meta::USize
	{
		Meta::USize
			nOffset
		=	0uz
		;
		//	it is assumed that the name is always contained
		for	(;	i_aBegin->Name != i_vName
			;	++i_aBegin
			)
		{
			nOffset += i_aBegin->Type->Size;
		}
		if	(i_aBegin->Type->Size == 0uz)
			return 0uz;
		else
			return nOffset;
	}
}
