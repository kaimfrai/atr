export module Layout.DataMember;

export import Meta.Value;
export import Layout.Initializer;
export import ID.Data;
export import Std;

export import Pack.Filter;
export import Pack.Accumulate;
export import Pack.Type;
export import Meta.TypeInfo;
export import Meta.ValueInfo;
export import Std.Concepts;
export import Meta.Integer;

export import Std;

export namespace
	Layout
{
	/// wraps around a value and provides access to it by a name token
	template
		<	ID::DataInstance
				t_tName
		,	typename
				t_tValue
		>
	struct
		DataMember
	{
		t_tValue
			Value
		;

		[[nodiscard]]
		auto constexpr
			operator[]
			(	t_tName
			)	const
		noexcept
		->	t_tValue const&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr
			operator[]
			(	t_tName
			)
		noexcept
		->	t_tValue&
		{	return Value;	}
	};

	/// wraps around a value and provides access to it by a name token
	template
		<	ID::DataInstance
				t_tName
		,	Stateless::Type
				t_tValue
		>
	struct
		DataMember
		<	t_tName
		,	t_tValue
		>
	{
		[[nodiscard]]
		auto constexpr
			operator[]
			(	t_tName
			)	const
		noexcept
		->	t_tValue
		{	return t_tValue{};	}
	};

	struct
		DataMemberInfo
	{
		Meta::EraseTypeToken
			Type
		;

		Meta::Value<char const[]>
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
	{
		static auto constexpr
		(	size
		)	()
		->	Meta::USize
		{	return t_nMemberCount;	}

		DataMemberInfo
			DataMembers
		[	t_nMemberCount
		];

		auto constexpr
		(	operator[]
		)	(	Meta::USize
					i_nIndex
			)	&
		->	DataMemberInfo&
		{
			if	(i_nIndex >= t_nMemberCount)
				throw "Index out of bounds!";
			return DataMembers[i_nIndex];
		}

		auto constexpr
		(	operator[]
		)	(	Meta::USize
					i_nIndex
			)	const&
		->	DataMemberInfo const&
		{
			if	(i_nIndex >= t_nMemberCount)
				throw "Index out of bounds!";
			return DataMembers[i_nIndex];
		}

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
						]	(	DataMemberInfo const
								&	i_rInfo
						)
						{	return i_rInfo.Name == vName;	}
					)
				;
				if	(vExchangePosition == end(vCopy))
					throw "Cannot exchange non-existing member!";

				vExchangePosition->Type = rExchange.Type;
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

		friend auto constexpr
		(	begin
		)	(	DataMemberConfig
				&	i_rConfig
			)
		->	DataMemberInfo*
		{	return i_rConfig.DataMembers;	}

		friend auto constexpr
		(	begin
		)	(	DataMemberConfig const
				&	i_rConfig
			)
		->	DataMemberInfo const*
		{	return i_rConfig.DataMembers;	}

		friend auto constexpr
		(	end
		)	(	DataMemberConfig
				&	i_rConfig
			)
		->	DataMemberInfo*
		{	return i_rConfig.DataMembers + t_nMemberCount;	}

		friend auto constexpr
		(	end
		)	(	DataMemberConfig const
				&	i_rConfig
			)
		->	DataMemberInfo const*
		{	return i_rConfig.DataMembers + t_nMemberCount;	}

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
		<>
	struct
		DataMemberConfig
		<	1uz
		>
	{
		static auto constexpr
		(	size
		)	()
		->	Meta::USize
		{	return 1uz;	}

		DataMemberInfo
			DataMember
		;

		template
			<	typename
					t_tEntity
			>
		explicit constexpr
		(	DataMemberConfig
		)	(	Meta::TypeToken<t_tEntity>
					i_vType
			,	ID::DataInstance auto
					i_vName
			)
		:	DataMember
			{	.Type = i_vType
			,	.Name = i_vName.RawArray
			}
		{}

		auto constexpr
		(	operator[]
		)	(	Meta::USize
					i_nIndex
			)	&
		->	DataMemberInfo&
		{
			if	(i_nIndex > 0uz)
				throw "Index out of bounds!";
			return DataMember;
		}

		auto constexpr
		(	operator[]
		)	(	Meta::USize
					i_nIndex
			)	const&
		->	DataMemberInfo const&
		{
			if	(i_nIndex > 0uz)
				throw "Index out of bounds!";
			return DataMember;
		}

		auto constexpr
		(	operator()
		)	(	DataMemberInfo const
				&	i_rExchange
			)	const
		->	DataMemberConfig
		{
			DataMemberConfig
				vCopy
			=	*this
			;

			if	(vCopy.DataMember.Name != i_rExchange.Name)
				throw "Cannot exchange non-existing member!";

			vCopy.DataMember.Type = i_rExchange.Type;
			return vCopy;
		}

		friend auto constexpr
		(	begin
		)	(	DataMemberConfig
				&	i_rConfig
			)
		->	DataMemberInfo*
		{	return &i_rConfig.DataMember;	}

		friend auto constexpr
		(	begin
		)	(	DataMemberConfig const
				&	i_rConfig
			)
		->	DataMemberInfo const*
		{	return &i_rConfig.DataMember;	}

		friend auto constexpr
		(	end
		)	(	DataMemberConfig
				&	i_rConfig
			)
		->	DataMemberInfo*
		{	return begin(i_rConfig) + 1z;	}

		friend auto constexpr
		(	end
		)	(	DataMemberConfig const
				&	i_rConfig
			)
		->	DataMemberInfo const*
		{	return begin(i_rConfig) + 1z;	}

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
		<	ID::StringLiteral
				t_vName
		,	typename
				t_tValue
		>
	DataMemberConfig<1uz> constexpr inline
		InfoV
	=	DataMemberConfig<1uz>
		{	Meta::Type<t_tValue>
		,	ID::DataV<t_vName>
		}
	;

	template
		<	ID::StringLiteral
				t_vOriginID
		,	ID::StringLiteral
				t_vTargetID
		>
	DataMemberInfo constexpr inline
		Alias
	=	DataMemberInfo
		{	Meta::Type
			<	ID::DataT
				<	t_vTargetID
				>
			>
		,	ID::DataT<t_vOriginID>::RawArray
		}
	;
}
