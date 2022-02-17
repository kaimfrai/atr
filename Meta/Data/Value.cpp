export module Meta.Data.Value;

export import Std;
export import Meta.Index;
export import Meta.Token.Type;
export import Meta.Token.Array;
export import Meta.Data.Aggregate;
export import Meta.Concept.Regular;

export namespace
	Meta
{
	template
		<	typename
				t_tValue
		>
	struct
		Value
	:	Data::Aggregate<t_tValue>
	{};

	template
		<	ProtoValue
				t_tValue
		>
	struct
		Value<t_tValue>
	:	Data::Aggregate<t_tValue>
	{
		constexpr
		(	Value
		)	()
		=	default;

		constexpr
		(	Value
		)	(	t_tValue const
				&	i_rValue
			)
		:	Data::Aggregate<t_tValue>
			{	i_rValue
			}
		{}

		constexpr
		(	Value
		)	(	t_tValue
				&&	i_rValue
			)
		:	Data::Aggregate<t_tValue>
			{	::std::move
				(	i_rValue
				)
			}
		{}
	};


	template
		<	typename
				t_tValue
		>
	struct
		Value<t_tValue[]>
	:	Data::Aggregate<t_tValue[]>
	{
		constexpr
		(	Value
		)	()
		=	default
		;

		constexpr
		(	Value
		)	(	t_tValue const*
			)
		:	Data::Aggregate<t_tValue[]>
			{}
		{}

		constexpr
		(	Value
		)	(	::std::initializer_list<t_tValue const>
			)
		:	Data::Aggregate<t_tValue[]>
			{}
		{}
	};

	template
		<	typename
				t_tValue
		,	USize
				t_nExtent
		>
	struct
		Value<t_tValue[t_nExtent]>
	:	Data::Aggregate<t_tValue[t_nExtent]>
	{
		constexpr
		(	Value
		)	()
		=	default
		;

		constexpr
		(	Value
		)	(	t_tValue const
				*	i_aValue
			)
		:	Data::Aggregate<t_tValue[t_nExtent]>
			{	Data::MakeArrayAggregate<t_nExtent>
				(	i_aValue
				)
			}
		{}

		constexpr
		(	Value
		)	(	::std::initializer_list<t_tValue const>
					i_vList
			)
		:	Value
			{	::std::data(i_vList)
			}
		{}
	};

	template
		<	typename
				t_tValue
		>
	(	Value
	)	(	t_tValue
		)
	->	Value
		<	t_tValue
		>
	;

	template
		<	ProtoValue
			...	t_tpValue
		>
	(	Value
	)	(	t_tpValue&&
			...
		)
	->	Value
		<	::std::common_type_t
			<	t_tpValue
				...
			>	[	sizeof...(t_tpValue)
				]
		>
	;

	template
		<	typename
				t_tValue
		,	USize
				t_nExtent
		>
	using
		ArrayValue
	=	Value
		<	TypeEntity
			<	ArrayType
				<	t_tValue
				,	t_nExtent
				>
			>
		>
	;
}
