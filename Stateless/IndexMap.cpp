export module Stateless.IndexMap;

export import Stateless.Map;
export import Stateless.Type;

export import Std.FunctionTraits;
export import Std.TemplateConcepts;
export import Std.Concepts;
export import Meta.Integer;

export import Std;

export namespace
	Stateless
{
	template
		<	Meta::USize
				t_nIndex
		>
	struct
		IndexType
	{
		/// default constructor
		constexpr
			IndexType
			()
		=	default
		;

		/// deduced conversion from a single value
		template
			<	template
					<	auto
					>
				typename
					t_t1Value
			>
		constexpr
			IndexType
			(	t_t1Value
					<	t_nIndex
					>
			)
		{}
	};

	template
		<	Meta::USize
				t_nIndex
		>
	Type auto constexpr inline
		Index
	=	Copy
		<	IndexType
			<	t_nIndex
			>
		>
	;

	/// maps an index to a stateless type
	template
		<	Meta::USize
				t_nIndex
		,	Type
				t_tResult
		>
	struct
		IndexMap
	:	MapToStateless
		<	IndexType
			<	t_nIndex
			>
		,	t_tResult
		>
	{};

	template
		<	Meta::USize
			...	t_npIndex
		,	Type
			...	t_tpResult
		>
		Map
		(	std::index_sequence
			<	t_npIndex
				...
			>
		,	t_tpResult
			...
		)
	->	Map
		<	IndexMap
			<	t_npIndex
			,	t_tpResult
			>
			...
		>
	;
}
