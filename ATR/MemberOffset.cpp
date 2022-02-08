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

	struct
		MemberOffsetInfo final
	{
		Meta::Value<DataMemberInfo const*>
			DataMember
		;

		Meta::USize
			Offset
		;

		static auto constexpr
		(	ResolveAlias
		)	(	StringView
					i_vName
			,	Meta::Value<DataMemberInfo const*>
					i_aBegin
			)
		->	Meta::Value<DataMemberInfo const*>
		{	//	it is assumed that the name is always contained
			for	(	auto
						aPosition
					=	i_aBegin
				;;
				)
				if	(aPosition->Name == i_vName)
				{
					if	(aPosition->Alias)
					{	//	restart loop to resolve an alias
						i_vName = aPosition->Alias;
						aPosition = i_aBegin;
					}
					else
						return aPosition;
				}
				else
					++aPosition;
		}

		explicit constexpr
		(	MemberOffsetInfo
		)	(	StringView
					i_vName
			,	Meta::Value<DataMemberInfo const*>
					i_aBegin
			)
		:	DataMember
			{	ResolveAlias
				(	i_vName
				,	i_aBegin
				)
			}
		,	Offset
			{	DataMember->Type->Size == 0uz
			?	//	empty types always have an offset of 0 despite being ordered last
				0uz
			:	//	sum of all previous data members
				::std::transform_reduce
				(	i_aBegin
				,	DataMember
				,	0uz
				,	::std::plus<Meta::USize>{}
				,	[]	(	DataMemberInfo const
							&	i_rDataMember
						)
					->	Meta::USize
					{	return i_rDataMember.Type->Size;	}
				)
			}
		{}
	};
}
