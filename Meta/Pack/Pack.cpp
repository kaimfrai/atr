module;

#include <utility>

export module Meta.Pack;

struct
	Ignore
{
	constexpr
	(	Ignore
	)	(	auto&&
		)
	{}
};

template
	<	std::size_t
	>
using
	IgnoreByIndex
=	Ignore
;

template
	<	std::size_t
		...	t_tpIgnoreFrontIndex
	>
struct
	IgnoreFront
{
	constexpr
	(	IgnoreFront
	)	(	std::index_sequence
			<	t_tpIgnoreFrontIndex
				...
			>
		)
	{}

	template
		<	std::size_t
			...	t_tpIngoreBackIndex
		>
	struct
		IgnoreBack
	{
		template
			<	typename
					t_tSelected
			>
		auto constexpr
		(	operator()
		)	(	IgnoreByIndex
				<	t_tpIgnoreFrontIndex
				>
				...
			,	t_tSelected&&
					i_rSelected
			,	IgnoreByIndex
				<	t_tpIngoreBackIndex
				>
				...
			)	const
		->	t_tSelected
		{	return i_rSelected;	}
	};

	template
		<	std::size_t
			...	t_tpIgnoreBackIndex
		>
	auto constexpr
	(	operator()
	)	(	std::index_sequence
			<	t_tpIgnoreBackIndex
				...
			>
		)	const
	->	IgnoreBack<t_tpIgnoreBackIndex...>
	{	return {};	}
};

template
	<	std::size_t
		...	t_tpIgnoreFrontIndex
	>
(	IgnoreFront
)	(	std::index_sequence
		<	t_tpIgnoreFrontIndex
			...
		>
	)
->	IgnoreFront
	<	t_tpIgnoreFrontIndex
		...
	>
;

template
	<	std::size_t
			t_nFrontIndexCount
	>
auto constexpr inline
	IngoreFrontIndices
=	IgnoreFront
	{	std::make_index_sequence
		<	t_nFrontIndexCount
		>{}
	}
;

template
	<	std::size_t
			t_nFrontIndexCount
	,	std::size_t
			t_nTotalIndexCount
	>
auto constexpr inline
	IgnoreIndices
=	IngoreFrontIndices
	<	t_nFrontIndexCount
	>(	std::make_index_sequence
		<	t_nTotalIndexCount
		-	t_nFrontIndexCount
		-	1uz
		>{}
	)
;

export namespace
	Meta
{
	using
		IndexType
	=	decltype(0uz)
	;
	using
		RingIndexType
	=	decltype(0z)
	;

	template
		<	IndexType
				t_nSelectIndex
		>
	struct
		Selector
	{
		template
			<	typename
				...	t_tpArgument
			>
		requires
		(	sizeof...(t_tpArgument)
		>	t_nSelectIndex
		)
		auto constexpr
		(	operator()
		)	(	t_tpArgument&&
				...	i_rpArgument
			)	const
		->	decltype(auto)
		{	return
			IgnoreIndices
			<	t_nSelectIndex
			,	sizeof...(i_rpArgument)
			>(	std::forward<t_tpArgument>
				(	i_rpArgument
				)
				...
			);
		}
	};

	template
		<	IndexType
				t_nSelectIndex
		>
	auto constexpr inline
		Select
	=	Selector<t_nSelectIndex>
		{}
	;

	template
		<	RingIndexType
				t_nRingSelectIndex
		>
	struct
		RingSelector
	{
		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	t_tpArgument&&
				...	i_rpArgument
			)	const
		->	decltype(auto)
		{
			bool constexpr
				bNegative
			=	(	t_nRingSelectIndex
				<	0z
				)
			;

			IndexType constexpr
				nPositiveIndex
			=	(	bNegative
				?	(	static_cast<IndexType>
						(	-
							(	t_nRingSelectIndex
							+	1z
							)
						)
					+	1uz
					)
				:	static_cast<IndexType>
					(	t_nRingSelectIndex
					)
				)
			;
			IndexType constexpr
				nRemainder
			=	(	nPositiveIndex
				%	sizeof...(t_tpArgument)
				)
			;

			IndexType constexpr
				nTrueIndex
			=	(	(	bNegative
					and (	nRemainder
						!=	0uz
						)
					)
				?	(	sizeof...(t_tpArgument)
					-	nRemainder
					)
				:	nRemainder
				)
			;
			return
			IgnoreIndices
			<	nTrueIndex
			,	sizeof...(i_rpArgument)
			>(	std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}
	};

	template
		<	RingIndexType
				t_nRingSelectIndex
		>
	auto constexpr inline
		RingSelect
	=	RingSelector<t_nRingSelectIndex>
		{}
	;

	template
		<	typename
				t_tType
		>
	struct
		Type
	{};
}

