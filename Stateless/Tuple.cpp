export module Stateless.Tuple;

export import Stateless.Compare;
export import Stateless.IndexMap;
export import Stateless.Map;

export import Std.TemplateConcepts;
export import Meta.Integer;
export import Meta.Index;
export import Meta.Concept.Empty;

export import Std;

export namespace
	Stateless
{
	/// multiple stateless objects
	template
		<	Meta::ProtoStateless
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
		{	Meta::Sequence<ElementCount>()
		,	t_tpStateless{}
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
		Meta::ProtoStateless auto
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
			(	auto
					i_fApplicable
			)	const
		{	return
				i_fApplicable
				(	t_tpStateless{}
					...
				)
			;
		}

		/// concatenates the stateless arguments of this StatelessTuple with with the stateless arguments of another StatelessTuple
		template
			<	Meta::ProtoStateless
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
			<	Meta::ProtoStateless
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
					and	(	t_tpStateless{}
						==	t_tpOtherStateless{}
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
			<	Meta::ProtoStateless
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
		<	Meta::ProtoStateless
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
	=	Meta::ProtoStateless
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
	auto constexpr
		AsTuple
		(	TupleInstance auto
				i_vTuple
		)
	->	typename decltype
		(	i_vTuple
		)
	::	TupleType
	{	return {};	}

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
				::std::declval<t_tTuple>()
				.	template
					get
					<	t_nIndex
					>()
			)
		>
	{};
}
