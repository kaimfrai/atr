export module ATR.DataMember;

export import Std;
export import Meta.Value;
export import ATR.ID;
export import Meta.Type;
export import Meta.Integer;
export import Meta.Predicate.Erasure;

export namespace
	ATR
{
	struct
		DataMemberInfo final
	{
		Meta::EraseAlignType
			Type
		;

		StringView
			Name
		;

		StringView
			Alias
		=	ID<>::StringView
		;

		friend auto constexpr
		(	operator<=>
		)	(	DataMemberInfo const
				&	i_rLeft
			,	DataMemberInfo const
				&	i_rRight
			)
		->	::std::strong_ordering
		{
			//	alias are sorted first to resolve them in iterations as soon as possible
			if	(i_rLeft.Alias and not i_rRight.Alias)
				return ::std::strong_ordering::less;
			else
			if	(not i_rLeft.Alias and i_rRight.Alias)
				return ::std::strong_ordering::greater;
			else
			//	greater alignment means ordered earlier
			if	(i_rLeft.Type.Align != i_rRight.Type.Align)
				return

					i_rLeft.Type.Align > i_rRight.Type.Align
				?	::std::strong_ordering::less
				:	::std::strong_ordering::greater
				;
			//	sort by name within same alignment
			else
				return i_rLeft.Name <=> i_rRight.Name;
		}
	};

	template
		<	Meta::USize
				t_nMemberCount
		>
	struct
		DataMemberConfig final
	:	Meta::DeduceIndexedArray
		<	DataMemberInfo
		,	t_nMemberCount
		>
	{
		using IndexedArray = Meta::DeduceIndexedArray<DataMemberInfo, t_nMemberCount>;
		using IndexedArray::IndexedArray;

		auto constexpr
		(	operator()
		)	(	::std::initializer_list<DataMemberInfo>
					i_vExchangeList
			)	const
		->	DataMemberConfig
		{
			DataMemberConfig
				vCopy
			=	*this
			;

			for	(	DataMemberInfo const
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
						]	(	Meta::Value<DataMemberInfo const&>
									i_rInfo
							)
						{	return i_rInfo->Name == vName;	}
					)
				;
				if	(vExchangePosition == end(vCopy))
					throw "Cannot exchange non-existing member!";

				vExchangePosition->Type = rExchange.Type;
				vExchangePosition->Alias = rExchange.Alias;
			}

			::std::sort(begin(vCopy), end(vCopy));

			return vCopy;
		}

		auto constexpr
		(	operator()
		)	(	DataMemberInfo const
				&	i_rExchange
			)	const
		->	DataMemberConfig
		{	return operator()({i_rExchange});	}

		template
			<	Meta::USize
					t_nRight
			>
		friend auto constexpr
		(	operator +
		)	(	DataMemberConfig const
				&	i_rLeft
			,	DataMemberConfig<t_nRight> const
				&	i_rRight
			)
		->	DataMemberConfig
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
				DataMemberConfig
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
					throw "Cannot merge DataMemberConfig with identical members!";
				return vResult;
			}
		}

		template
			<	Meta::USize
					t_nRight
			>
		friend auto constexpr
		(	operator -
		)	(	DataMemberConfig const
				&	i_rLeft
			,	DataMemberConfig<t_nRight> const
				&	i_rRight
			)
		->	DataMemberConfig
			<	t_nMemberCount
			-	t_nRight
			>
		{
			static_assert
			(	t_nMemberCount
			>=	t_nRight
			,	"Cannot subtract more DataMemberInfos than already exist!"
			);
			if	constexpr
				(	t_nRight
				==	0uz
				)
				return i_rLeft;
			else
			if	constexpr
				(	t_nMemberCount
				==	t_nRight
				)
				return DataMemberConfig<0uz>{};
			else
			if	(	not
					::std::includes
					(	begin(i_rLeft)
					,	end(i_rLeft)
					,	begin(i_rRight)
					,	end(i_rRight)
					)
				)
				throw "Cannot subtract DataMemberInfos that are not contained!";

			DataMemberConfig
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
	(	DataMemberConfig
	)	(	DataMemberConfig<t_nMemberCount>
		)
	->	DataMemberConfig
		<	t_nMemberCount
		>
	;

	template
		<	StringLiteral
				t_vName
		,	typename
				t_tValue
		>
	DataMemberConfig<1uz> constexpr inline
		InfoV
	{	DataMemberInfo
		{	Meta::Type<t_tValue>
		,	ID_T<t_vName>::StringView
		}
	};

	template
		<	StringLiteral
				t_vOriginID
		,	StringLiteral
				t_vTargetID
		>
	DataMemberInfo constexpr inline
		Alias
	{	.Type = Meta::Type<ID_T<t_vTargetID>>
	,	.Name = ID_T<t_vOriginID>::StringView
	,	.Alias = ID_T<t_vTargetID>::StringView
	};

	/// maps a string literal to a Layout
	template
		<	StringLiteral
		>
	ATR::DataMemberConfig<0uz> constexpr inline
		LayoutConfig
	{};
}
