export module Stateless.IndexMap;

export import Stateless.Map;
export import Std.TemplateConcepts;
export import Meta.Integer;
export import Meta.Index;
export import Meta.Concept.Empty;
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

		friend auto constexpr
		(	operator ==
		)	(	IndexType
			,	IndexType
			)
		->	bool
		{	return true;	}
	};

	template
		<	Meta::USize
				t_nIndex
		>
	IndexType<t_nIndex> constexpr inline
		Index
	{};

	/// maps an index to a stateless type
	template
		<	Meta::USize
				t_nIndex
		,	Meta::ProtoStateless
				t_tResult
		>
	using
		IndexMap
	=	MapToConstant
		<	IndexType
			<	t_nIndex
			>
		,	t_tResult
		>
	;

	template
		<	Meta::USize
			...	t_npIndex
		,	Meta::ProtoStateless
			...	t_tpResult
		>
	(	Map
	)	(	Meta::IndexToken
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
