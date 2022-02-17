export module ATR.DataMember;

export import Std;
export import Meta.Integer;
export import Meta.Token.Type;
export import Meta.Token.Query;
export import Meta.Data.Aggregate;
export import ATR.ID;

export namespace
	ATR
{
	::Meta::USize constexpr inline
		AliasSortKey
	=	0uz
	;

	::Meta::USize constexpr inline
		StaticSortKey
	=	::std::numeric_limits<::Meta::USize>::max()
	;

	template
		<	typename
				t_tData
		>
	::Meta::USize constexpr inline
		MemberSortKey
	=	//	sort order inverse to alignment
		StaticSortKey
	-	(	::std::is_empty_v<Meta::Data::Object<t_tData>>
		?	0uz // optimize empty members to be static
		:	Meta::BitAlign(Meta::Type<t_tData>)
		)
	;

	struct
		MemberInfo final
	{
		Meta::USize SortKey;
		StringView Name;
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
		<	Meta::USize
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
		)	(	::std::initializer_list<MemberInfo>
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

				vExchangePosition->SortKey = rExchange.SortKey;
				vExchangePosition->Type = rExchange.Type;
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
		<	StringLiteral
				t_vName
		,	typename
				t_tValue
		>
	MemberList<1uz> constexpr inline
		InfoV
	{	MemberInfo
		{	.SortKey
		=	MemberSortKey<t_tValue>
		,	.Name
		=	ID_T<t_vName>::StringView
		,	.Type
		=	Meta::Type<t_tValue>
		}
	};

	template
		<	StringLiteral
				t_vOriginID
		,	StringLiteral
				t_vTargetID
		>
	MemberInfo constexpr inline
		Alias
	{	.SortKey
	=	AliasSortKey
	,	.Name
	=	ID_T<t_vOriginID>::StringView
	,	.Type
	=	Meta::Type<ID_T<t_vTargetID>>
	};

	/// maps a string literal to a Layout
	template
		<	StringLiteral
		>
	MemberList<0uz> constexpr inline
		LayoutConfig
	{};
}
