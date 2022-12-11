export module ATR:DataMember;

export import Meta.ID;
export import Meta.Arithmetic;
export import Meta.Data;
export import Meta.Predicate;
export import Meta.Token;

export import Std;

using ::Meta::IndexToken;
using ::Meta::Sequence;
using ::Meta::USize;

export namespace
	ATR
{
	using ::Meta::Specifier::Mut;
	using ::Meta::Specifier::BitField;

	USize constexpr inline
		AliasSortKey
	=	0uz
	;

	USize constexpr inline
		StaticSortKey
	=	::std::numeric_limits<USize>::max()
	;

	template
		<	typename
				t_tData
		>
	USize constexpr inline
		MemberSortKey
	=	//	sort order inverse to alignment
		StaticSortKey
	-	(	not
			::std::is_empty_v<Meta::Data::Object<t_tData>>
		*	// optimize empty members to be static
			Meta::BitAlign(Meta::Type<t_tData>)
		)
	;

	struct
		MemberInfo final
	{
		USize SortKey;
		Meta::StringView Name;
		Meta::EraseTypeToken Type;

		friend auto constexpr
		(	operator<=>
		)	(	MemberInfo const&
			,	MemberInfo const&
			)
		->	::std::strong_ordering
		=	default;
	};

	template
		<	USize
				t_nMemberCount
		>
	struct
		MemberList final
	:	Meta::ArrayAggregate
		<	MemberInfo
		,	t_nMemberCount
		>
	{
		auto constexpr
		(	operator()
		)	(	::std::initializer_list<MemberInfo const>
					i_vExchangeList
			)	const
		->	MemberList
		{
			MemberList
				vCopy
			=	*this
			;

			for	(	MemberInfo const
					&	rExchange
				:	i_vExchangeList
				)
			{
				auto const
					vExchangePosition
				=	::std::find_if
					(	begin(vCopy)
					,	end(vCopy)
					,	[	vName = rExchange.Name
						]	(	MemberInfo const
								&	i_rInfo
							)
						{	return i_rInfo.Name == vName;	}
					)
				;
				if	(vExchangePosition == end(vCopy))
					throw "Cannot exchange non-existing member!";

				*vExchangePosition = rExchange;
			}

			::std::sort(begin(vCopy), end(vCopy));

			return vCopy;
		}

		auto constexpr
		(	operator()
		)	(	MemberInfo const
				&	i_rExchange
			)	const
		->	MemberList
		{	return operator()({i_rExchange});	}

		template
			<	Meta::USize
					t_nRight
			>
		friend auto constexpr
		(	operator +
		)	(	MemberList const
				&	i_rLeft
			,	MemberList<t_nRight> const
				&	i_rRight
			)
		->	MemberList
			<	t_nMemberCount
			+	t_nRight
			>
		{
			if	constexpr
				(	t_nMemberCount
				==	0uz
				)
				return i_rRight;
			else
			if	constexpr
				(	t_nRight
				==	0uz
				)
				return i_rLeft;
			else
			{
				MemberList
				<	t_nMemberCount
				+	t_nRight
				>	vResult
				;

				auto const
					vLast
				=	::std::set_union
					(	begin(i_rLeft)
					,	end(i_rLeft)
					,	begin(i_rRight)
					,	end(i_rRight)
					,	begin(vResult)
					)
				;

				if	(vLast != end(vResult))
					throw "Cannot merge MemberList with identical members!";
				return vResult;
			}
		}

		template
			<	Meta::USize
					t_nRight
			>
		friend auto constexpr
		(	operator -
		)	(	MemberList const
				&	i_rLeft
			,	MemberList<t_nRight> const
				&	i_rRight
			)
		->	MemberList
			<	t_nMemberCount
			-	t_nRight
			>
		{
			static_assert
			(	t_nMemberCount
			>=	t_nRight
			,	"Cannot subtract more MemberInfos than already exist!"
			);
			if	constexpr
				(	t_nRight
				==	0uz
				)
				return i_rLeft;
			else
			if	(	not
					::std::includes
					(	begin(i_rLeft)
					,	end(i_rLeft)
					,	begin(i_rRight)
					,	end(i_rRight)
					)
				)
				throw "Cannot subtract MemberInfos that are not contained!";

			MemberList
			<	t_nMemberCount
			-	t_nRight
			>	vResult
			;

			::std::set_difference
			(	begin(i_rLeft)
			,	end(i_rLeft)
			,	begin(i_rRight)
			,	end(i_rRight)
			,	begin(vResult)
			);
			return vResult;
		}

		friend auto constexpr
		(	operator ==
		)	(	MemberList const
				&	i_rLeft
			,	MemberList const
				&	i_rRight
			)
		->	bool
		=	default;

		template
			<	USize
					t_nRightMemberCount
			>
		friend auto constexpr
		(	operator ==
		)	(	MemberList const
				&
			,	MemberList<t_nRightMemberCount> const
				&
			)
		->	bool
		{
			static_assert
			(	t_nMemberCount != t_nRightMemberCount
			,	"Unexpected overload choice!"
			);
			return false;
		}
	};

	template
		<	Meta::USize
				t_nMemberCount
		>
	(	MemberList
	)	(	MemberList<t_nMemberCount>
		)
	->	MemberList
		<	t_nMemberCount
		>
	;

	template
		<	typename
			...	t_tpDataMember
		>
	(	MemberList
	)	(	t_tpDataMember
			...
		)
	->	MemberList
		<	sizeof...(t_tpDataMember)
		>
	;

	template
		<	Meta::ProtoID
				t_tName
		,	Meta::EraseTypeToken
				t_vType
		,	USize
				t_nMemberSortKey
		>
	MemberInfo constexpr inline
		MemberInstance
	{	.SortKey
	=	t_nMemberSortKey
	,	.Name
	=	t_tName::StringView
	,	.Type
	=	t_vType
	};

	template
		<	Meta::StringLiteral
				t_vName
		,	typename
				t_tValue
		>
	MemberList<1uz> constexpr inline
		Member
	{	MemberInstance
		<	Meta::ID_T<t_vName>
		,	Meta::Type<t_tValue>
		,	MemberSortKey<t_tValue>
		>
	};

	template
		<	Meta::StringLiteral
				t_vOriginID
		,	Meta::StringLiteral
				t_vTargetID
		>
	MemberInfo const constexpr inline
	&	Alias
	=	MemberInstance
		<	Meta::ID_T<t_vOriginID>
		,	Meta::Type<Meta::ID_T<t_vTargetID>>
		,	AliasSortKey
		>
	;

	inline namespace
		Literals
	{
		template
			<	char
				...	t_npNumeric
			>
		auto constexpr
		(	operator""_ext
		)	()
		->	::Meta::Token::Extent
			<	::Meta::EvaluateNumericLiteral
				<	t_npNumeric
					...
				>()
			>
		{	return {};	}
	}

	template
		<	MemberList
				t_vList
		>
	struct
		DefineMembers final
	{
		static auto constexpr
		(	get
		)	()
		->	decltype(t_vList) const&
		{	return t_vList;	}

		static auto constexpr
		(	size
		)	()
		->	Meta::USize
		{	return t_vList.size();	}

		explicit(false) constexpr
		(	operator decltype(t_vList) const&
		)	()	const
		{	return t_vList;	}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	const
		->	decltype(auto)
		{	return t_vList[i_nIndex];	}

		auto constexpr
		(	operator()
		)	(	::std::initializer_list<MemberInfo const>
					i_vExchangeList
			)	const
		->	decltype(t_vList)
		{	return t_vList(i_vExchangeList);	}

		auto constexpr
		(	operator()
		)	(	MemberInfo const
				&	i_rExchange
			)
		->	decltype(t_vList)
		{	return t_vList(i_rExchange);	}

		template
			<	USize
					t_nRight
			>
		friend auto constexpr
		(	operator +
		)	(	DefineMembers
			,	MemberList<t_nRight> const
				&	i_rRight
			)
		->	decltype(auto)
		{	return t_vList + i_rRight;	}

		friend auto constexpr
		(	operator *
		)	(	DefineMembers
			,	Meta::ProtoConstraint<Meta::IsStateless> auto
					i_fTransform
			)
		->	decltype(t_vList)
		{
			auto
				vList
			=	Meta::InjectSequence<t_vList.size()>
				(	[]	(	auto
								i_vIndex
						)
					{
						auto constexpr& vItem = t_vList[i_vIndex];
						return
						MemberInstance
						<	Meta::ID_Of<vItem.Name>
						,	(	Meta::RestoreTypeToken<vItem.Type>
							+	decltype(i_fTransform){}
							)
						,	vItem.SortKey
						>;
					}
				,	Meta::Construct<decltype(t_vList)>()
				)
			;
			::std::sort(begin(vList), end(vList));
			return vList;
		}

		template
			<	USize
					t_nRight
			>
		friend auto constexpr
		(	operator -
		)	(	DefineMembers
			,	MemberList<t_nRight> const
				&	i_rRight
			)
		->	decltype(auto)
		{	return t_vList - i_rRight;	}


		friend auto constexpr
		(	operator ==
		)	(	DefineMembers
			,	DefineMembers
			)
		->	bool
		=	default;

		template
			<	MemberList
					t_vRightList
			>
		friend auto constexpr
		(	operator ==
		)	(	DefineMembers
			,	DefineMembers<t_vRightList>
			)
		->	bool
		{	return false;	}
	};

	/// maps a string literal to a Layout
	template
		<	Meta::StringLiteral
		>
	DefineMembers
	<	MemberList<0uz>{}
	>	extern
		LayoutConfig
	;
}
