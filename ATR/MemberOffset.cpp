export module ATR.MemberOffset;

export import ATR.Fork;
export import ATR.DataMember;
export import ATR.ID;

export import Std;

export import Pack.Instance;
export import Pack.Type;
export import Meta.ValueInfo;
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

	/// increases the offset of a MemberOffset
	template
		<	typename
				t_tMember
		,	Meta::USize
				t_nOffset
		,	Meta::SizeInfo
				t_tAdditionalOffset
		>
	[[nodiscard]]
	auto constexpr
		operator+
		(	MemberOffset
			<	t_tMember
			,	t_nOffset
			>
		,	t_tAdditionalOffset
		)
		noexcept
	->	MemberOffset
		<	t_tMember
		,	t_nOffset
		+	t_tAdditionalOffset
			::	Value
		>
	{	return{};	}

	// stateless members always have offset 0
	template
		<	Meta::ProtoStateless
				t_tMember
		>
	[[nodiscard]]
	auto constexpr
		operator+
		(	MemberOffset
			<	t_tMember
			,	0uz
			>
		,	Meta::SizeInfo auto
		)
		noexcept
	->	MemberOffset
		<	t_tMember
		,	0uz
		>
	{	return{};	}

	/// immitates syntax of pointer to member dereference
	template
		<	typename
				t_tMember
		,	Meta::USize
				t_nOffset
		>
	[[nodiscard]]
	auto constexpr
		operator->*
		(	void
			*	i_aObject
		,	MemberOffset
			<	t_tMember
			,	t_nOffset
			>	i_vMemberOffset
		)
	noexcept
	->	decltype(auto)
	{
		return
			i_vMemberOffset
			(	i_aObject
			)
		;
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
		operator->*
		(	void const
			*	i_aObject
		,	MemberOffset
			<	t_tMember
			,	t_nOffset
			>	i_vMemberOffset
		)
	noexcept
	->	decltype(auto)
	{
		return
			i_vMemberOffset
			(	i_aObject
			)
		;
	}

	/// returns a MemberOffset for the given member id if it is present
	template
		<	template
				<	typename
				>
			typename
				t_t1Qualifier
		,	ProtoID
				t_tName
		,	typename
				t_tValue
		>
	auto constexpr
		OffsetOf
		(	Meta::TypeToken<DataMember<t_tName, t_tValue>>
		,	t_tName
		)
	noexcept
	{	return
			MemberOffset
			<	t_t1Qualifier
				<	t_tValue
				>
			,	0uz
			>{}
		;
	}

	/// constrains data ids to those that have the Offset function overloaded in a member area
	template
		<	typename
				t_tDataID
		,	typename
				t_tMemberArea
		,	template
				<	typename
				>
			typename
				t_t1Qualifier
		>
	concept
		MemberOffsetIDOf
	=	ProtoID
		<	t_tDataID
		>
	and	requires
			(	t_tDataID
					c_vDataID
			)
		{
			OffsetOf
			<	t_t1Qualifier
			>(	Meta::Type<t_tMemberArea>
			,	c_vDataID
			);
		}
	;

	/// returns a MemberOffset for the given member id if it is present in the north area
	template
		<	template
				<	typename
				>
			typename
				t_t1Qualifier
		,	typename
				t_tNorthArea
		,	typename
				t_tSouthArea
		>
	auto constexpr
		OffsetOf
		(	Meta::TypeToken
			<	Fork
				<	t_tNorthArea
				,	t_tSouthArea
				>
			>
		,	MemberOffsetIDOf
			<	t_tNorthArea
			,	t_t1Qualifier
			>	auto
				i_vMemberID
		)
	noexcept
	{
		return
			OffsetOf
			<	t_t1Qualifier
			>(	Meta::Type<t_tNorthArea>
			,	i_vMemberID
			)
		;
	}

	/// returns a MemberOffset for the given member id if it is present in the south area
	template
		<	template
				<	typename
				>
			typename
				t_t1Qualifier
		,	typename
				t_tNorthArea
		,	typename
				t_tSouthArea
		>
	auto constexpr
		OffsetOf
		(	Meta::TypeToken
			<	Fork
				<	t_tNorthArea
				,	t_tSouthArea
				>
			>
		,	MemberOffsetIDOf
			<	t_tSouthArea
			,	t_t1Qualifier
			>	auto
				i_vMemberID
		)
	noexcept
	{
		return
			OffsetOf
			<	t_t1Qualifier
			>(	Meta::Type<t_tSouthArea>
			,	i_vMemberID
			)
		+	/// offset by the size of the north area
			Meta::V
			<	Meta::ByteSize_Of
				<	t_tNorthArea
				>
			>
		;
	}
}
