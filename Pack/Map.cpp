export module Pack.Map;

export import Pack.Concat;
export import Pack.MakeSequence;
export import Pack.Size;
export import Pack.Instance;
export import Pack.Type;
export import Pack.Value;
export import Pack.Sequence;
export import Meta.TypeInfo;
export import Meta.ValueInfo;
export import <Stateless/Tuple.hpp>;
export import <Std/FunctionTraits.hpp>;

export namespace
	Stateless
{
	///	maps a TypeInfo of a key type to a TypeInfo of a resulting type
	template
		<	typename
				t_tKey
		,	typename
				t_tResult
		>
	struct
		[[nodiscard]]
		TypeToTypeMap
	:	MapToStateless
		<	Meta::TypeInfo
			<	t_tKey
			>
		,	Meta::TypeInfo
			<	t_tResult
			>
		>
	{};

	///	maps a ValueInfo of a key value to a TypeInfo of a resulting type
	template
		<	auto
				t_vKey
		,	typename
				t_tResult
		>
	struct
		[[nodiscard]]
		ValueToTypeMap
	:	MapToStateless
		<	Meta::ValueInfo
			<	t_vKey
			>
		,	Meta::TypeInfo
			<	t_tResult
			>
		>
	{};

	///	maps a TypeInfo of a key type to a ValueInfo of a resulting value
	template
		<	typename
				t_tKey
		,	auto
				t_vResult
		>
	struct
		[[nodiscard]]
		TypeToValueMap
	:	MapToStateless
		<	Meta::TypeInfo
			<	t_tKey
			>
		,	Meta::ValueInfo
			<	t_vResult
			>
		>
	{};

	///	maps a ValueInfo of a key value to a ValueInfo of a resulting value
	template
		<	auto
				t_vKey
		,	auto
				t_vResult
		>
	struct
		[[nodiscard]]
		ValueToValueMap
	:	MapToStateless
		<	Meta::ValueInfo
			<	t_vKey
			>
		,	Meta::ValueInfo
			<	t_vResult
			>
		>
	{};

	template
		<	typename
			...	t_tpKey
		,	typename
			...	t_tpResult
		>
		Map
		(	Pack::Type
			<	t_tpKey
				...
			>
		,	Pack::Type
			<	t_tpResult
				...
			>
		)
	->	Map
		<	TypeToTypeMap
			<	t_tpKey
			,	t_tpResult
			>
			...
		>
	;

	template
		<	auto
			...	t_vpKey
		,	typename
			...	t_tpResult
		>
		Map
		(	Pack::Value
			<	t_vpKey
				...
			>
		,	Pack::Type
			<	t_tpResult
				...
			>
		)
	->	Map
		<	ValueToTypeMap
			<	t_vpKey
			,	t_tpResult
			>
			...
		>
	;

	template
		<	typename
				t_tKey
		,	t_tKey
			...	t_vpKey
		,	typename
			...	t_tpResult
		>
		Map
		(	Pack::Sequence
			<	t_tKey
			,	t_vpKey
				...
			>
		,	Pack::Type
			<	t_tpResult
				...
			>
		)
	->	Map
		<	ValueToTypeMap
			<	t_vpKey
			,	t_tpResult
			>
			...
		>
	;

	template
		<	typename
			...	t_tpKey
		,	auto
			...	t_vpResult
		>
		Map
		(	Pack::Type
			<	t_tpKey
				...
			>
		,	Pack::Value
			<	t_vpResult
				...
			>
		)
	->	Map
		<	TypeToValueMap
			<	t_tpKey
			,	t_vpResult
			>
			...
		>
	;

	template
		<	typename
			...	t_tpKey
		,	typename
				t_tResult
		,	t_tResult
			...	t_vpResult
		>
		Map
		(	Pack::Type
			<	t_tpKey
				...
			>
		,	Pack::Sequence
			<	t_tResult
			,	t_vpResult
				...
			>
		)
	->	Map
		<	TypeToValueMap
			<	t_tpKey
			,	t_vpResult
			>
			...
		>
	;

	template
		<	auto
			...	t_vpKey
		,	auto
			...	t_vpResult
		>
		Map
		(	Pack::Value
			<	t_vpKey
				...
			>
		,	Pack::Value
			<	t_vpResult
				...
			>
		)
	->	Map
		<	ValueToValueMap
			<	t_vpKey
			,	t_vpResult
			>
			...
		>
	;

	template
		<	auto
			...	t_vpKey
		,	typename
				t_tResult
		,	t_tResult
			...	t_vpResult
		>
		Map
		(	Pack::Value
			<	t_vpKey
				...
			>
		,	Pack::Sequence
			<	t_tResult
			,	t_vpResult
				...
			>
		)
	->	Map
		<	ValueToValueMap
			<	t_vpKey
			,	t_vpResult
			>
			...
		>
	;

	template
		<	typename
				t_tKey
		,	t_tKey
			...	t_vpKey
		,	auto
			...	t_vpResult
		>
		Map
		(	Pack::Sequence
			<	t_tKey
			,	t_vpKey
				...
			>
		,	Pack::Value
			<	t_vpResult
				...
			>
		)
	->	Map
		<	ValueToValueMap
			<	t_vpKey
			,	t_vpResult
			>
			...
		>
	;

	template
		<	typename
				t_tKey
		,	t_tKey
			...	t_vpKey
		,	typename
				t_tResult
		,	t_tResult
			...	t_vpResult
		>
		Map
		(	Pack::Sequence
			<	t_tKey
			,	t_vpKey
				...
			>
		,	Pack::Sequence
			<	t_tResult
			,	t_vpResult
				...
			>
		)
	->	Map
		<	ValueToValueMap
			<	t_vpKey
			,	t_vpResult
			>
			...
		>
	;

	template
		<	typename
				t_tMap
		>
	concept
		MapInstance
	=	PackTemplate::TypeInstanceOf
		<	t_tMap
		,	Stateless::Map
		>
	;
}

export namespace
	Pack
{
	///	creates an index based Map for the given pack
	[[nodiscard]]
	constexpr
	Stateless::MapInstance auto
		IndexMap
		(	Instance auto
				i_vPack
		)
	{	return
			Stateless::Map
			{	MakeIndexPackSequenceFor
				(	i_vPack
				)
			,	i_vPack
			}
		;
	}

	/// constrains the argument to be a ValueInfo with an index value between the beginning of a pack and the end
	///	[0...size]
	template
		<	typename
				t_tIndexInPackRange
		,	typename
				t_tPack
		>
	concept
		IndexInPackRange
	=	Meta::ValueInstance
		<	t_tIndexInPackRange
		>
	and	Instance
		<	t_tPack
		>
	and requires
			(	t_tIndexInPackRange
					c_vIndexInPackRange
			,	t_tPack
					c_vPack
			)
		{
			requires
				(	// not greater than size
					// size itself is valid
					(	InfoNormalize
						(	c_vIndexInPackRange
						)
					<=	PackSize
						(	c_vPack
						)
					)
				or	// not smaller than 0
					(	InfoNormalize
						(	c_vIndexInPackRange
						)
					>=	//	0 of the same type
						InfoNormalize
						(	c_vIndexInPackRange
						-	c_vIndexInPackRange
						)
					)
				)
			;
		}
	;

	///	can be applied to a pack to get the n-th element
	template
		<	Std::USizeType
				t_nIndex
		>
	struct
		Index
	{
		///	default constructor
		constexpr
			Index
			()
		=	default
		;

		///	deduce the index from the argument
		constexpr
		explicit
			Index
			(	Meta::ValueInfo
				<	t_nIndex
				>
			)
		{}

		[[nodiscard]]
		constexpr
		Meta::InfoInstance auto
			operator()
			(	Meta::InfoInstance auto
				...	i_vpInfo
			)	const
		{	return
				IndexMap
				(	Concat
					(	i_vpInfo
						...
					)
				)[	Meta::V<t_nIndex>
				]
			;
		}
	};

	///	extracts all elements within the index range from the map
	[[nodiscard]]
	constexpr
	Instance auto
		ExtractIndexRange
		(	Stateless::MapInstance auto
				i_vMap
		,	Meta::SizeInfo auto
				i_vStart
		,	Meta::SizeInfo auto
				i_vLength
		)
	{	// returns Pack<Map[Index<start>], Index<start + 1>, ...>
		return
			Transform
			(	MakeOffsetIndexSequence
				(	i_vLength
				,	i_vStart
				)
			,	i_vMap
			)
		;
	}

	///	creates a new pack containing only a certain amount of elements after the start index
	[[nodiscard]]
	constexpr
	Instance auto
		SubPack
		(	Instance auto
				i_vPack
		,	Meta::SizeInfo auto
				i_vStart
		,	Meta::SizeInfo auto
				i_vLength
		)
	{	// returns Pack<Map[Index<start>], Index<start + 1>, ...>
		return
			ExtractIndexRange
			(	IndexMap
				(	i_vPack
				)
			,	i_vStart
			,	i_vLength
			)
		;
	}

	///	creates a new pack containing only a certain amount of elements after the start index
	[[nodiscard]]
	constexpr
	Instance auto
		ExtractStartPack
		(	Instance auto
				i_vPack
		,	Meta::SizeInfo auto
				i_vCount
		)
	{	return
			SubPack
			(	i_vPack
			,	Meta::V<0_uz>
			,	i_vCount
			)
		;
	}

	/// checks if the pack starts with the given other pack
	[[nodiscard]]
	constexpr
	auto
		StartsWith
		(	Instance auto
				i_vPack
		,	Instance auto
				i_vStartPack
		)
	->	bool
	{	return
			(	Size
				(	i_vPack
				)
			>=	Size
				(	i_vStartPack
				)
			)
		and	(	ExtractStartPack
				(	i_vPack
				,	Size
					(	i_vStartPack
					)
				)
			==	i_vStartPack
			)
		;
	}

	///	creates a new pack containing only a certain amount of elements after the start index
	[[nodiscard]]
	constexpr
	Instance auto
		ExtractEndPack
		(	Instance auto
				i_vPack
		,	Meta::SizeInfo auto
				i_vCount
		)
	{
		Meta::SizeInfo auto
		const
			vSize
		=	Size
			(	i_vPack
			)
		;
		return
			SubPack
			(	i_vPack
			,	vSize
			-	i_vCount
			,	i_vCount
			)
		;
	}

	/// checks if the pack ends with the given other pack
	[[nodiscard]]
	constexpr
	auto
		EndsWith
		(	Instance auto
				i_vPack
		,	Instance auto
				i_vEndPack
		)
	->	bool
	{	return
			(	Size
				(	i_vPack
				)
			>=	Size
				(	i_vEndPack
				)
			)
		and	(	ExtractEndPack
				(	i_vPack
				,	Size
					(	i_vEndPack
					)
				)
			==	i_vEndPack
			)
		;
	}

	///	splits the pack at a specific index
	[[nodiscard]]
	constexpr
	Stateless::Pair auto
		SplitAt
		(	Instance auto
				i_vPack
		,	Meta::SizeInfo auto
				i_vSplitIndex
		)
	{
		Meta::SizeInfo auto
		const
			vSize
		=	Size
			(	i_vPack
			)
		;

		return
			Stateless::Tuple
			{	ExtractStartPack
				(	i_vPack
				,	i_vSplitIndex
				)
			,	ExtractEndPack
				(	i_vPack
				,	vSize
				-	i_vSplitIndex
				)
			}
		;
	}
}
