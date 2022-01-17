export module Layout.DataMemberLayoutSplit;

export import Layout.DataMember;

export import Pack.Concat;
export import Pack.Transform;
export import Pack.Filter;
export import Pack.SplitBest;
export import Pack.Map;
export import Pack.Sort;
export import Pack.Normalize;
export import Stateless.Binding;

export import Std;

export namespace
	Layout
{
	/// checks if the alignment of the given DataMemberInfo equals the parameter
	template
		<	auto
				t_vAlignment
		>
	struct
		[[nodiscard]]
		HasAlignment
		:	Stateless::NegatableBinding
			<	HasAlignment
				<	t_vAlignment
				>
			>
	{
		constexpr
			HasAlignment
			()
		=	default
		;

		constexpr
			HasAlignment
			(	Meta::ValueInfo
				<	t_vAlignment
				>
			)
		{}

		[[nodiscard]]
		constexpr
		auto
			operator()
			(	DataMemberInfoInstance auto
					i_vDataMemberInfo
			)	const
		->	bool
		{	return
				t_vAlignment
			==	DataMemberBitAlignment
				(	i_vDataMemberInfo
				)
			;
		}
	};

	/// by default take all datamembers with minimal alignment and put them in the second pack
	[[nodiscard]]
	constexpr
	Pack::PairInstance auto
		DataMemberLayoutSplit
		(	DataMemberInfoInstance auto
			...	i_vpDataMember
		)
	{
		DataMemberPackInstance auto const
			Pack
		=	Pack::Concat
			(	i_vpDataMember
				...
			)
		;

		Pack::ValueInstance auto const
			AlignmentPack
		=	Pack::Transform
			(	Pack
			,	DataMemberBitAlignment
			)
		;

		Meta::ValueInstance auto const
			MinimumAlignment
		=	Pack::PickMinimum
			(	AlignmentPack
			)
		;

		return
			Pack::Filter
			(	Pack
			,	// invert condition to get the minimal alignment as the second pack
				not HasAlignment
				{	MinimumAlignment
				}
			)
		;
	}

	/// constrains subsequent DataMemberInfo arguments to have the same alignment as another DataMemberInfo
	template
		<	typename
				t_tAlignedDataMemberInfo
		,	typename
				t_tCompareToDataMemberInfo
		>
	concept
		SameAlignmentDataMemberInfo
	=	DataMemberInfoInstance
		<	t_tAlignedDataMemberInfo
		>
	and	DataMemberInfoInstance
		<	t_tCompareToDataMemberInfo
		>
	and	HasAlignment
		{	DataMemberBitAlignment
			(	Stateless::Copy
				<	t_tCompareToDataMemberInfo
				>
			)
		}(	Stateless::Copy
			<	t_tAlignedDataMemberInfo
			>
		)
	;

	/// compares two datamember infos by their name
	struct
		CompareDataMemberInfo
	{
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	DataMemberInfoInstance auto
					i_vLeft
			,	DataMemberInfoInstance auto
					i_vRight
			)	const
		->	bool
		{	return
				DataMemberName
					(	i_vLeft
					)
			<	DataMemberName
					(	i_vRight
					)
			;
		}
	};

	///	if all DataMembers have the same alignment, split by the highest bit
	/// this makes the first part have a length that is a power of 2
	[[nodiscard]]
	constexpr
	Pack::PairInstance auto
		DataMemberLayoutSplit
		(	DataMemberInfoInstance auto
				i_vFirst
		,	SameAlignmentDataMemberInfo
			<	decltype(i_vFirst)
			>	auto
			...	i_vpDataMember
		)
	{
		DataMemberPackInstance auto const
			Pack
		=	Pack::Sort
			(	Pack::Concat
				(	i_vFirst
				,	i_vpDataMember
					...
				)
			,	CompareDataMemberInfo
				{}
			)
		;

		Meta::SizeInfo auto const
			PackSizeInfo
		=	Pack::Size
			(	Pack
			)
		;

		Meta::SizeInfo auto const
			HighestBitInfo
		=	Meta::V
			<	std::bit_floor
				(	decltype(PackSizeInfo)
					::	Value
				-	1uz
				)
			>
		;

		DataMemberPackInstance auto const
			LeadingSubPack
		=	Pack::SubPack
				(	Pack
				,	Meta::V<0uz>
				,	HighestBitInfo
				)
		;

		DataMemberPackInstance auto const
			TrailingSubPack
		=	Pack::SubPack
			(	Pack
			,	HighestBitInfo
			,	PackSizeInfo
			-	HighestBitInfo
			)
		;

		return
			Stateless::Tuple
			{	LeadingSubPack
			,	TrailingSubPack
			}
		;
	}
}
