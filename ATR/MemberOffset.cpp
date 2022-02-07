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
		,	Meta::USize
				t_nOffset
		>
	struct
		MemberOffset
	:	MemberOffset
		<	t_tMember const
		,	t_nOffset
		>
	{
		using MemberOffset<t_tMember const, t_nOffset>::operator();

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	void
				*	i_aObject
			)	const
			noexcept
		->	decltype(auto)
		{
			if constexpr(Meta::ProtoStateless<t_tMember>)
				return
				t_tMember
				{};
			else
			{
				auto const
					aMemberAsChar
				=	static_cast
					<	char
						*
					>(	i_aObject
					)
				+	t_nOffset
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
		}
	};

	/// specialization for const only objects
	template
		<	typename
				t_tMember
		,	Meta::USize
				t_nOffset
		>
	struct
		MemberOffset
		<	t_tMember const
		,	t_nOffset
		>
	{
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	void const
				*	i_aObject
			)	const
			noexcept
		->	decltype(auto)
		{
			if constexpr(Meta::ProtoStateless<t_tMember const>)
				return
				t_tMember
				{};
			else
			{
				auto const
					aMemberAsChar
				=	static_cast
					<	char const
						*
					>(	i_aObject
					)
				+	t_nOffset
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
		}
	};

	/// immitates syntax of pointer to member dereference
	template
		<	typename
				t_tMember
		,	Meta::USize
				t_nOffset
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	void
			*	i_aObject
		,	MemberOffset
			<	t_tMember
			,	t_nOffset
			>	i_vMemberOffset
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
		,	Meta::USize
				t_nOffset
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	void const
			*	i_aObject
		,	MemberOffset
			<	t_tMember
			,	t_nOffset
			>	i_vMemberOffset
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
		,	Meta::Value<DataMemberInfo const*>
				i_aEnd
		)
	->	Meta::EraseTypeToken
	{	return
			::std::find_if
			(	i_aBegin
			,	i_aEnd
			,	[	vObject = i_vName.Object
				]	(	Meta::Value<DataMemberInfo const&>
							i_rValue
					)
				->	bool
				{
					return i_rValue->Name.Object == vObject;
				}
			)
		->	Type
		;
	}

	auto constexpr
	(	ByteOffset
	)	(	StringView
				i_vName
		,	Meta::Value<DataMemberInfo const*>
				i_aBegin
		,	Meta::Value<DataMemberInfo const*>
				i_aEnd
		)
	->	Meta::USize
	{
		Meta::USize
			nOffset
		=	0uz
		;
		for	(;	i_aBegin != i_aEnd
			and	i_aBegin->Name.Object != i_vName.Object
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
