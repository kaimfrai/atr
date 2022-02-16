export module Meta.Value;

export import Meta.Index;
export import Meta.Type;
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
		=	default
		;

		constexpr
		(	Value
		)	(	t_tValue const
				&	i_rValue
			)
		requires
			ProtoCopyConstructible<t_tValue>
		:	Data::Aggregate<t_tValue>
			{	i_rValue
			}
		{}

		constexpr
		(	Value
		)	(	t_tValue
				&&	i_rValue
			)
		requires
			ProtoMoveConstructible<t_tValue>
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
		requires
			ProtoCopyConstructible<t_tValue>
		:	Data::Aggregate<t_tValue[]>
			{}
		{}

		constexpr
		(	Value
		)	(	::std::initializer_list<t_tValue const>
			)
		requires
			ProtoCopyConstructible<t_tValue>
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
	)	(	t_tValue&&
		)
	->	Value
		<	::std::remove_reference_t
			<	t_tValue
			>
		>
	;

	template
		<	ProtoValue
			...	t_tpValue
		>
	(	Value
	)	(	t_tpValue const&
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
				t_tElement
		,	USize
				t_nExtent
		>
	TypeToken<t_tElement[t_nExtent]> constexpr
		ArrayType
	{};

	template
		<	typename
				t_tElement
		>
	TypeToken<t_tElement[]> constexpr
		ArrayType
		<	t_tElement
		,	0uz
		>
	{};

	template
		<	ProtoValue
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

	template
		<	typename
				t_tProto
		>
	concept
		ProtoMoveConstructibleAsValue
	=	Proto::MoveConstructible<t_tProto>
	or	Proto::Valueless<t_tProto>
	or	Proto::Scalar<t_tProto>
	or	Proto::None<t_tProto>
	;

	template
		<	ProtoMoveConstructibleAsValue
				t_tValue
		>
	using
		MoveConstructibleValue
	=	Value
		<	t_tValue
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoCopyConstructibleAsValue
	=	Proto::CopyConstructible<t_tProto>
	or	Proto::Valueless<t_tProto>
	or	Proto::Scalar<t_tProto>
	or	Proto::None<t_tProto>
	;

	template
		<	ProtoCopyConstructibleAsValue
				t_tValue
		>
	using
		CopyConstructibleValue
	=	Value
		<	t_tValue
		>
	;

	template
		<	typename
				t_tValue
		>
	auto constexpr
	(	UnwrapValue
	)	(	t_tValue&&
				i_rValue
		)
	->	t_tValue
	{	return i_rValue;	}

	template
		<	typename
				t_tValue
		>
	auto constexpr
	(	UnwrapValue
	)	(	Value<t_tValue>
			&	i_rValue
		)
	->	decltype(auto)
	{	return UnwrapValue(i_rValue.Data);	}

	template
		<	typename
				t_tValue
		>
	auto constexpr
	(	UnwrapValue
	)	(	Value<t_tValue> const
			&	i_rValue
		)
	->	decltype(auto)
	{	return UnwrapValue(i_rValue.Data);	}

	template
		<	typename
				t_tValue
		>
	auto constexpr
	(	UnwrapValue
	)	(	Value<t_tValue>
			&&	i_rValue
		)
	->	decltype(auto)
	{	return UnwrapValue(::std::move(i_rValue).Data);	}

	template
		<	typename
				t_tType
		>
	using
		UnwrapType
	=	decltype
		(	UnwrapValue
			(	::std::declval<t_tType>
				()
			)
		)
	;
}
