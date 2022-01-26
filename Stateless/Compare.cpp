export module Stateless.Compare;

export import Stateless.IndexMap;
export import Stateless.Type;

export import Std.Concepts;
export import Meta.Integer;
export import Std;

export namespace
	Stateless
{
	/// type to substitute the lack of a Stateless object during comparison
	struct
		NoType
	{
		friend
		constexpr
		auto
			operator<=>
			(	NoType
			,	NoType
			)
		{
			return
				std::strong_ordering::equal
			;
		}

		friend
		constexpr
		auto
			operator<=>
			(	NoType
			,	Type auto
			)
		{	return
				std::strong_ordering::less
			;
		}

		friend
		constexpr
		auto
			operator<=>
			(	Type auto
			,	NoType
			)
		{	return
				std::strong_ordering::greater
			;
		}
	};

	/// types that are usually returned from the <=> operator
	template
		<	typename
				t_tOrdering
		>
	concept
		OrderingLike
	=	Std::SameAs_Transform
		<	decltype(
				t_tOrdering
				::	equivalent
			)
		,	t_tOrdering
		,	std::remove_cv_t
		>
	;

	/// returns the first ordering result that is not equivalent or equivalent if all are
	constexpr
	auto
		FoldOrderingResults
		(	OrderingLike auto
			...	i_vpOrderingResult
		)
	{
		using
			CommonType
		=	std::common_type_t
			<	decltype(
					i_vpOrderingResult
				)
				...
			>
		;

		std::array
		<	CommonType
		,	sizeof...(
				i_vpOrderingResult
			)
		> const
			vResultList
		{	i_vpOrderingResult
			...
		};

		auto const
			vEnd
		=	vResultList
			.	end
				()
		;

		auto const
			vFirstNonEquivalent
		=	std::find_if
			(	vResultList
				.	begin
					()
			,	vEnd
			,	[]	(	CommonType
							i_vOrdering
					)
				{	return
						i_vOrdering
					!=	CommonType
						::	equivalent
					;
				}
			)
		;

		return
			(	vFirstNonEquivalent
			==	vEnd
			)
		?	CommonType
			::	equivalent
		:	*
			vFirstNonEquivalent
		;
	}

	/// compares two stateless maps lexicographically
	template
		<	Meta::USize
			...	t_npIndex
		>
	[[nodiscard]]
	constexpr
	auto
		LexicographicalMapCompare
		(	std::index_sequence
			<	t_npIndex
				...
			>
		,	Std::TypePackInstanceOf
			<	DefaultingMap
			>	auto
				i_vLeft
		,	Std::TypePackInstanceOf
			<	DefaultingMap
			>	auto
				i_vRight
		)
	{	return
			FoldOrderingResults
			(	(	i_vLeft
					[	Index<t_npIndex>
					]
				<=>	i_vRight
					[	Index<t_npIndex>
					]
				)
				...
			)
		;
	}

	/// compares two stateless maps lexicographically
	template
		<	MapItemInstance
			...	t_tpLeftMapItem
		,	MapItemInstance
			...	t_tpRightMapItem
		>
	[[nodiscard]]
	constexpr
	auto
		operator<=>
		(	Map
			<	t_tpLeftMapItem
				...
			>	i_vLeft
		,	Map
			<	t_tpRightMapItem
				...
			>	i_vRight
		)
	{	return
			LexicographicalMapCompare
			(	std::make_index_sequence
				<	std::max
					(	sizeof...(
							t_tpLeftMapItem
						)
					,	sizeof...(
							t_tpRightMapItem
						)
					)
				>{}
			,	DefaultingMap
				{	Copy<NoType>
				,	i_vLeft
				}
			,	DefaultingMap
				{	Copy<NoType>
				,	i_vRight
				}
			)
		;
	}
}


static_assert(Stateless::OrderingLike<std::strong_ordering>);
static_assert(Stateless::OrderingLike<std::weak_ordering>);
static_assert(Stateless::OrderingLike<std::partial_ordering>);
