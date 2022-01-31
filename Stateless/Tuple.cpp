export module Stateless.Tuple;

export import Stateless.Compare;
export import Stateless.IndexMap;
export import Stateless.Map;

export import Std.TemplateConcepts;
export import Std.Concepts;
export import Meta.Integer;

export import Std;

export namespace
	Stateless
{
	/// multiple stateless objects
	template
		<	Type
			...	t_tpStateless
		>
	struct
		[[nodiscard]]
		Tuple
	{
		using
			TupleType
		=	Tuple
		;

		static Meta::USize constexpr
			ElementCount
		=	sizeof...(
				t_tpStateless
			)
		;

		static
		constexpr
		Map
			MapToIndex
		{	Copy<std::make_index_sequence<ElementCount>>
		,	Copy<t_tpStateless>
			...
		};

		/// default constructor
		constexpr
			Tuple
			()
		=	default
		;

		/// deduce template from arguments
		constexpr
		explicit
			Tuple
			(	t_tpStateless
				...
			)
		requires
			(	ElementCount
			>	0uz
			)
		{}

		/// returns a stateless object of the type at the given index in a Tuple
		template
			<	Meta::USize
					t_nIndex
			>
		[[nodiscard]]
		constexpr
		Type auto
			get
			()	const
		noexcept
		{	return
				MapToIndex
				[	Index<t_nIndex>
				]
			;
		}

		///	forwards default constructed values the stateless objects to the given object
		[[nodiscard]]
		constexpr
		auto
			ApplyTo
			(	Type auto
					i_fApplicable
			)	const
		{	return
				i_fApplicable
				(	Copy<t_tpStateless>
					...
				)
			;
		}

		/// concatenates the stateless arguments of this StatelessTuple with with the stateless arguments of another StatelessTuple
		template
			<	Type
				...	t_tpOtherStateless
			>
		[[nodiscard]]
		constexpr
		auto
			ConcatWith
			(	Tuple
				<	t_tpOtherStateless
					...
				>
			)	const
		->	Tuple
			<	t_tpStateless
				...
			,	t_tpOtherStateless
				...
			>
		{	return{}; }

		/// compares each Stateless element for equality, provided that the count is the same, false otherwise
		template
			<	Type
				...	t_tpOtherStateless
			>
		[[nodiscard]]
		friend
		constexpr
		auto
			operator==
			(	Tuple
			,	Tuple
				<	t_tpOtherStateless
					...
				>
			)
		{	if constexpr
				(	ElementCount
				==	sizeof...(
						t_tpOtherStateless
					)
				)
			{
				return
					(	...
					and	(	Copy<t_tpStateless>
						==	Copy<t_tpOtherStateless>
						)
					)
				;
			}
			else
				return
					false
				;
		}

		/// compares each Stateless element
		template
			<	Type
				...	t_tpOtherStateless
			>
		[[nodiscard]]
		friend
		constexpr
		auto
			operator<=>
			(	Tuple
			,	Tuple
				<	t_tpOtherStateless
					...
				>
			)
		{	return
				MapToIndex
			<=>	Tuple
				<	t_tpOtherStateless
					...
				>::	MapToIndex
			;
		}
	};

	template
		<	Type
			...	t_tpStateless
		>
	(	Tuple
	)	(	t_tpStateless
			...
		)
	->	Tuple
		<	t_tpStateless
			...
		>
	;

	/// constrains to instances of stateless tuple with a specified pack size
	template
		<	typename
				t_tStatelessTuple
		,	Meta::USize
				t_nSize
		>
	concept
		TupleOfSize
	=	Type
		<	t_tStatelessTuple
		>
	and	Std::PackInstanceOfSize
		<	t_tStatelessTuple
		,	t_nSize
		>
	;

	/// constrains to instances of stateless tuple
	template
		<	typename
				t_tStatelessTuple
		>
	concept
		TupleInstance
	=	TupleOfSize
		<	t_tStatelessTuple
		,	t_tStatelessTuple
			::	TupleType
			::	ElementCount
		>
	;

	[[nodiscard]]
	constexpr
	Std::TypePackInstanceOf<Tuple> auto
		AsTuple
		(	TupleInstance auto
				i_vTuple
		)
	{	return
			Copy
			<	typename
				decltype(i_vTuple)
				::	TupleType
			>
		;
	}

	[[nodiscard]]
	constexpr
	auto
		operator==
		(	TupleInstance auto
				i_vLeft
		,	TupleInstance auto
				i_vRight
		)
	->	bool
	{	return
			AsTuple(i_vLeft)
		==	AsTuple(i_vRight)
		;
	}

	/// constrains to instances of stateless tuple to the ones with exactly 2 elements
	template
		<	typename
				t_tStatelessTuple
		>
	concept
		Pair
	=	TupleOfSize
		<	t_tStatelessTuple
		,	2uz
		>
	;
}

export namespace
	std
{
	/// decomposition for types like StatelessTuple
	template
		<	Stateless::TupleInstance
				t_tTuple
		>
	struct
		tuple_size
		<	t_tTuple
		>
	:	integral_constant
		<	size_t
		,	t_tTuple
			::	ElementCount
		>
	{};

	/// decomposition for types like StatelessTuple
	template
		<	size_t
				t_nIndex
		,	Stateless::TupleInstance
				t_tTuple
		>
	struct
		tuple_element
		<	t_nIndex
		,	t_tTuple
		>
	:	type_identity
		<	decltype(
				Stateless::Copy<t_tTuple>
				.	template
					get
					<	t_nIndex
					>()
			)
		>
	{};
}
