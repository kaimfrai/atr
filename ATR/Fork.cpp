export module ATR.Fork;

export import ATR.ID;
export import Meta.Concept.Empty;

export namespace
	ATR
{
	/// constrains data ids to those that have the [] operator overloaded in a member area
	template
		<	typename
				t_tDataID
		,	typename
				t_tMemberArea
		>
	concept
		MemberAccessIDOf
	=	ProtoID
		<	t_tDataID
		>
	and	requires
			(	t_tDataID
					c_vDataID
			,	t_tMemberArea
					c_vMemberArea
			)
		{	c_vMemberArea
			[	c_vDataID
			];
		}
	;

	template
		<	typename
				t_tNorthArea
		,	typename
				t_tSouthArea
		>
	struct
		Fork
	{
		t_tNorthArea
			NorthArea
		;

		t_tSouthArea
			SouthArea
		;

		/// access const members of the north member area
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	MemberAccessIDOf<t_tNorthArea const> auto
					i_vMemberID
			)	const
		noexcept
		->	decltype(auto)
		{	return
			NorthArea
			[	i_vMemberID
			];
		}

		/// access non-const members of the north member area
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	MemberAccessIDOf<t_tNorthArea> auto
					i_vMemberID
			)
		noexcept
		->	decltype(auto)
		{	return
			NorthArea
			[	i_vMemberID
			];
		}

		/// access const members of the south member area
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	MemberAccessIDOf<t_tSouthArea const> auto
					i_vMemberID
			)	const
		noexcept
		->	decltype(auto)
		{	return
			SouthArea
			[	i_vMemberID
			];
		}

		/// access non-const members of the south member area
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	MemberAccessIDOf<t_tSouthArea> auto
					i_vMemberID
			)
		noexcept
		->	decltype(auto)
		{	return
			SouthArea
			[	i_vMemberID
			];
		}
	};

	template
		<	typename
				t_tNorthArea
		,	Meta::ProtoStateless
				t_tSouthArea
		>
	struct
		Fork
		<	t_tNorthArea
		,	t_tSouthArea
		>
	:	t_tSouthArea
	{
		using t_tSouthArea::operator[];

		t_tNorthArea
			NorthArea
		;

		/// access const members of the north member area
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	MemberAccessIDOf<t_tNorthArea const> auto
					i_vMemberID
			)	const
		noexcept
		->	decltype(auto)
		{	return
			NorthArea
			[	i_vMemberID
			];
		}

		/// access non-const members of the north member area
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	MemberAccessIDOf<t_tNorthArea> auto
					i_vMemberID
			)
		noexcept
		->	decltype(auto)
		{	return
			NorthArea
			[	i_vMemberID
			];
		}
	};

	template
		<	Meta::ProtoStateless
				t_tNorthArea
		,	Meta::ProtoStateless
				t_tSouthArea
		>
	struct
		Fork
		<	t_tNorthArea
		,	t_tSouthArea
		>
	:	t_tNorthArea
	,	t_tSouthArea
	{
		using t_tNorthArea::operator[];
		using t_tSouthArea::operator[];
	};
}