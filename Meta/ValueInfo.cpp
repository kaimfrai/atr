export module Meta.ValueInfo;

export import Meta.TypeInfo;
export import Meta.Integer;

export namespace
	Meta
{
	///	wraps around a single compile-time value
	///	defines operations on that value that yield another ValueInfo
	template
		<	auto
				t_vAny
		>
	struct
		[[nodiscard]]
		ValueInfo final
	{
		///	the type of the wrapped value
		using
			ValueType
		=	decltype(
				t_vAny
			)
		;

		///the wrapped value
		static
		constexpr
		ValueType
			Value
		=	t_vAny
		;

		/// conversion to the value
		[[nodiscard]]
		constexpr
			operator
			ValueType
			()	const
		{	return
				Value
			;
		}

		/// provides access to members of the wrapped value
		/// note this does not forward to the -> operator of the value
		[[nodiscard]]
		constexpr
		auto
			operator->
			()	const
		->	ValueType
			const
			*
		{	return
				&Value
			;
		}

		///	forwards the operator to the wrapped value and returns a ValueInfo of the result
		template
			<	auto
				...	t_vpArgument
			>
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	ValueInfo
				<	t_vpArgument
				>
				...
			)	const
		->	ValueInfo
			<	Value
				(	t_vpArgument
					...
				)
			>
		{	return{};	}

		///	special case for unwrapping TypeInfo into a templated operator() of a class value
		template
			<	typename
					t_tInitial
			,	typename
				...	t_tpArgument
			>
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	TypeToken
				<	t_tInitial
				>
			,	TypeToken
				<	t_tpArgument
				>
				...
			)	const
		requires
			ProtoClass
			<	ValueType
			>
		{	return
				ValueInfo
				<	Value
					.	template
						operator()
						<	t_tInitial
						,	t_tpArgument
							...
						>()
				>{}
			;
		}

		///	forwards the operator to the wrapped value and returns a ValueInfo of the result
		template
			<	auto
					t_vArgument
			>
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	ValueInfo
					<	t_vArgument
					>
			)	const
		->	ValueInfo
			<	t_vAny
				[	t_vArgument
				]
			>
		{	return{};	}
	};

	///	stateless types derived from ValueInfo
	template
		<	typename
				t_tValueInstance
		>
	concept
		ValueInstance
	=	/// copy constructs ValueInfo -> unambiguously derived from ValueInfo
		requires
			(	t_tValueInstance
					c_vValueInstance
			)
		{
			ValueInfo
			{	c_vValueInstance
			};
		}
	;

	/// frequently used shortcut to create an object of type ValueInfo
	template
		<	auto
				t_vAny
		>
	ValueInfo<t_vAny> constexpr inline
		V
	{};

	///	ValueInstances for which the value is of a specific type
	template
		<	typename
				t_tValueInfo
		,	typename
				t_tValue
		>
	concept
		ValueInfoOf
	=	ValueInstance
		<	t_tValueInfo
		>
	and ::std::same_as
		<	typename
			t_tValueInfo
		::	ValueType
		,	t_tValue
		>
	;

	///	shortcut for frequently used ValueInfo of USize
	template
		<	typename
				t_tValueInfo
		>
	concept
		SizeInfo
	=	ValueInfoOf
		<	t_tValueInfo
		,	Meta::USize
		>
	;

	///	shortcut for frequently used ValueInfo of bool
	template
		<	typename
				t_tValueInfo
		>
	concept
		BoolInfo
	=	ValueInfoOf
		<	t_tValueInfo
		,	bool
		>
	;

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vAny
		>
	[[nodiscard]]
	constexpr
	auto
		operator+
		(	ValueInfo
			<	t_vAny
			>
		)
	->	ValueInfo
		<	(	+
				t_vAny
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator+
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			+	t_vRight
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vAny
		>
	[[nodiscard]]
	constexpr
	auto
		operator-
		(	ValueInfo
			<	t_vAny
			>
		)
	->	ValueInfo
		<	(	-
				t_vAny
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator-
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			-	t_vRight
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vAny
		>
	[[nodiscard]]
	constexpr
	auto
		operator*
		(	ValueInfo
			<	t_vAny
			>
		)
	->	ValueInfo
		<	(	*
				t_vAny
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator*
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			*	t_vRight
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator/
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			/	t_vRight
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator%
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			%	t_vRight
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value
	/// will return bool to sythesize operator !=
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator==
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	decltype(
			t_vLeft
		==	t_vRight
		)
	{	return
			t_vLeft
			==	t_vRight
		;
	}

	///	forwards the operator to the wrapped value
	///	will return a comparison type to synthesize comparison operators
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator<=>
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	decltype(
			t_vLeft
		<=>	t_vRight
		)
	{	return
			t_vLeft
		<=>	t_vRight
		;
	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vAny
		>
	[[nodiscard]]
	constexpr
	auto
		operator~
		(	ValueInfo
			<	t_vAny
			>
		)
	->	ValueInfo
		<	(	~
				t_vAny
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vAny
		>
	[[nodiscard]]
	constexpr
	auto
		operator!
		(	ValueInfo
			<	t_vAny
			>
		)
	->	ValueInfo
		<	(	!
				t_vAny
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vAny
		>
	[[nodiscard]]
	constexpr
	auto
		operator&
		(	ValueInfo
					<	t_vAny
					>
		)
	->	ValueInfo
		<	(	&
				t_vAny
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator&
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			&	t_vRight
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator&&
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			&&	t_vRight
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator|
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			|	t_vRight
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator||
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			||	t_vRight
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator^
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			^	t_vRight
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator<<
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			<<	t_vRight
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator>>
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			>>	t_vRight
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator->*
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			->*	t_vRight
			)
		>
	{	return{};	}

	///	forwards the operator to the wrapped value and returns a ValueInfo of the result
	template
		<	auto
				t_vLeft
		,	auto
				t_vRight
		>
	[[nodiscard]]
	constexpr
	auto
		operator,
		(	ValueInfo
			<	t_vLeft
			>
		,	ValueInfo
			<	t_vRight
			>
		)
	->	ValueInfo
		<	(	t_vLeft
			,	t_vRight
			)
		>
	{	return{};	}
}
