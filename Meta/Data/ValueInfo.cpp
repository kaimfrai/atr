export module Meta.Data.ValueInfo;

export import Meta.Token.Type;
export import Meta.Integer;
export import Meta.Concept.Category;

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

	/// frequently used shortcut to create an object of type ValueInfo
	template
		<	auto
				t_vAny
		>
	ValueInfo<t_vAny> constexpr inline
		V
	{};

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
