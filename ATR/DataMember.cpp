export module ATR.DataMember;

export import Std;
export import Meta.Value;
export import ATR.ID;
export import Meta.Type;
export import Meta.Integer;

export namespace
	ATR
{
	struct
		DataMemberInfo
	{
		Meta::EraseTypeToken
			Type
		;

		StringView
			Name
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
			if	(i_rLeft.Type == i_rRight.Type)
				return i_rLeft.Name <=> i_rRight.Name;
			else
				return
					//	greater alignment means ordered earlier
					i_rLeft.Type->Alignment < i_rRight.Type->Alignment
				?	::std::strong_ordering::greater
				:	::std::strong_ordering::less
				;
		}
	};

	template
		<	Meta::USize
				t_nMemberCount
		>
	struct
		DataMemberConfig
	:	Meta::Value<DataMemberInfo[t_nMemberCount]>
	{
		using Meta::Value<DataMemberInfo[t_nMemberCount]>::Value;
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
						]	(	Meta::Value<DataMemberInfo> const
								&	i_rInfo
						)
						{	return i_rInfo.Object.Name == vName;	}
					)
				;
				if	(vExchangePosition == end(vCopy))
					throw "Cannot exchange non-existing member!";

				vExchangePosition->Object.Type = rExchange.Type;
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

	private:
		constexpr DataMemberConfig() = default;
		template
			<	Meta::USize
					t_nLeft
			,	Meta::USize
					t_nRight
			>
		friend auto constexpr
		(	operator +
		)	(	DataMemberConfig<t_nLeft> const&
			,	DataMemberConfig<t_nRight> const&
			)
		->	DataMemberConfig
			<	t_nLeft
			+	t_nRight
			>
		;

		template
			<	Meta::USize
					t_nLeft
			,	Meta::USize
					t_nRight
			>
		friend auto constexpr
		(	operator -
		)	(	DataMemberConfig<t_nLeft> const&
			,	DataMemberConfig<t_nRight> const&
			)
		->	DataMemberConfig
			<	t_nLeft
			-	t_nRight
			>
		;
	};

	template
		<>
	struct
		DataMemberConfig
		<	0uz
		>
	{
		static auto constexpr
		(	size
		)	()
		->	Meta::USize
		{	return 0uz;	}

		friend auto constexpr
		(	begin
		)	(	DataMemberConfig
			)
		->	DataMemberInfo const*
		{	return nullptr;	}

		friend auto constexpr
		(	end
		)	(	DataMemberConfig
			)
		->	DataMemberInfo const*
		{	return nullptr;	}
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
		<	Meta::USize
				t_nLeft
		,	Meta::USize
				t_nRight
		>
	auto constexpr
	(	operator +
	)	(	DataMemberConfig<t_nLeft> const
			&	i_rLeft
		,	DataMemberConfig<t_nRight> const
			&	i_rRight
		)
	->	DataMemberConfig
		<	t_nLeft
		+	t_nRight
		>
	{
		if	constexpr
			(	t_nLeft
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
				<	t_nLeft
				+	t_nRight
				>
				vResult
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
				t_nLeft
		,	Meta::USize
				t_nRight
		>
	auto constexpr
	(	operator -
	)	(	DataMemberConfig<t_nLeft> const
			&	i_rLeft
		,	DataMemberConfig<t_nRight> const
			&	i_rRight
		)
	->	DataMemberConfig
		<	t_nLeft
		-	t_nRight
		>
	{
		static_assert
		(	t_nLeft
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
			(	t_nLeft
			==	t_nRight
			)
			return DataMemberConfig<0uz>{};
		else
		{
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
				<	t_nLeft
				-	t_nRight
				>
				vResult
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
	}

	template
		<	StringLiteral
				t_vName
		,	typename
				t_tValue
		>
	DataMemberConfig<1uz> constexpr inline
		InfoV
	=	DataMemberConfig<1uz>
		{	DataMemberInfo
			{	Meta::Type<t_tValue>
			,	ID_V<t_vName>.StringView
			}
		}
	;

	template
		<	StringLiteral
				t_vOriginID
		,	StringLiteral
				t_vTargetID
		>
	DataMemberInfo constexpr inline
		Alias
	=	DataMemberInfo
		{	Meta::Type
			<	ID_T<t_vTargetID>
			>
		,	ID_T<t_vOriginID>::StringView
		}
	;

	/// maps a string literal to a Layout
	template
		<	StringLiteral
		>
	ATR::DataMemberConfig<0uz> constexpr inline
		LayoutConfig
	{};
}
