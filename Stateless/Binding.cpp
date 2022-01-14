export module Stateless.Binding;

export import Stateless.Type;

export namespace
	Stateless
{
	///	wraps around a invocable at compile-time
	///	returns invokes the result with the ! operator
	template
		<	Type
				t_tInvoke
		>
	struct
		[[nodiscard]]
		NotBinding
	{
		static
		constexpr
		Type auto
			InvokeObject
		=	Copy<t_tInvoke>
		;

		///	default constructor
		constexpr
			NotBinding
			()
		=	default
		;

		///	deduce template from argument
		constexpr
		explicit
			NotBinding
			(	t_tInvoke
			)
		{}

		///	forwards the given arguments and invokes operator! on the result
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	Type auto
				...	i_vpArgument
			)	const
		{	return
				not
				InvokeObject
				(	i_vpArgument
					...
				)
			;
		}

		/// two negations cancel each other out
		[[nodiscard]]
		friend
		constexpr
		Type auto
			operator not
			(	NotBinding
			)
		{	return
				InvokeObject
			;
		}
	};

	template
		<	Type
				t_tInvoke
		>
	(	NotBinding
	)	(	t_tInvoke
		)
	->	NotBinding
		<	t_tInvoke
		>
	;

	/// CRTP for providing operator not
	template
		<	typename
				t_tBinding
		>
	struct
		[[nodiscard]]
		NegatableBinding
	{
		[[nodiscard]]
		friend
		constexpr
		Type auto
			operator not
			(	NegatableBinding
				const&
			)
		{	return
				NotBinding
				<	t_tBinding
				>{}
			;
		}
	};

	///	wraps around an invocable at compile-time
	///	binds stateless values to the front of the invocation
	template
		<	Type
				t_tInvoke
		,	Type
			...	t_tpFrontArgument
		>
	struct
		[[nodiscard]]
		FrontBinding
		:	NegatableBinding
			<	FrontBinding
				<	t_tInvoke
				,	t_tpFrontArgument
					...
				>
			>
	{
		static
		constexpr
		Type auto
			InvokeObject
		=	Copy<t_tInvoke>
		;

		///	default constructor
		constexpr
			FrontBinding
			()
		=	default
		;

		///	deduce template from arguments
		constexpr
		explicit
			FrontBinding
			(	t_tInvoke
			,	t_tpFrontArgument
				...
			)
		{}

		///	forwards the given arguments after passing the bound compile-time values
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	Type auto
				...	i_vpBackArgument
			)	const
		{	return
				InvokeObject
				(	Copy<t_tpFrontArgument>
					...
				,	i_vpBackArgument
					...
				)
			;
		}
	};

	template
		<	Type
				t_tInvoke
		,	Type
			...	t_tpFrontArgument
		>
	(	FrontBinding
	)	(	t_tInvoke
		,	t_tpFrontArgument
			...
		)
	->	FrontBinding
		<	t_tInvoke
		,	t_tpFrontArgument
			...
		>
	;

	///	wraps around a invocable at compile-time
	///	binds stateless values to the back of the invocation
	template
		<	Type
				t_tInvoke
		,	Type
			...	t_tpBackArgument
		>
	struct
		[[nodiscard]]
		BackBinding
		:	NegatableBinding
			<	BackBinding
				<	t_tInvoke
				,	t_tpBackArgument
					...
				>
			>
	{
		static
		constexpr
		Type auto
			InvokeObject
		=	Copy<t_tInvoke>
		;

		///	default constructor
		constexpr
			BackBinding
			()
		=	default
		;

		///	deduce template from arguments
		constexpr
		explicit
			BackBinding
			(	t_tInvoke
			,	t_tpBackArgument
				...
			)
		{}

		///	forwards the given arguments after passing the bound compile-time values
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	Type auto
				...	i_vpFrontArgument
			)	const
		{	return
				InvokeObject
				(	i_vpFrontArgument
					...
				,	Copy<t_tpBackArgument>
					...
				)
			;
		}
	};

	template
		<	Type
				t_tInvoke
		,	Type
			...	t_tpBackArgument
		>
	(	BackBinding
	)	(	t_tInvoke
		,	t_tpBackArgument
			...
		)
	->	BackBinding
		<	t_tInvoke
		,	t_tpBackArgument
			...
		>
	;
}
