export module Stateless.Type;

export import Std.Concepts;

export namespace
	Stateless
{
		/// full name Stateless::Type, types that have no state and can be freely copied around
	template
		<	typename
				t_tAny
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		Type_Transform
	=	Std::Empty_Transform
		<	t_tAny
		,	t_t1Transform
		>
	and	Std::DefaultConstructibleLiteral
		<	t_t1Transform
			<	t_tAny
			>
		>
	;

	/// full name Stateless::Type, types that have no state and can be freely copied around
	template
		<	typename
				t_tAny
		>
	concept
		Type
	=	Type_Transform
		<	t_tAny
		,	std::type_identity_t
		>
	;

	///	two stateless objects compare the same by default if the have the same type
	/// return bool to sythesize operator !=
	[[nodiscard]]
	constexpr
	auto
		operator==
		(	Type auto
				i_vLeft
		,	Type auto
				i_vRight
		)
	->	bool
	{	return
			std::is_same_v
			<	decltype(i_vLeft)
			,	decltype(i_vRight)
			>
		;
	}

	///	make a default constructed copy of a stateless object type
	///	used in combination with decltype to get from an argument back to a compile time value
	template
		<	Type
				t_tStateless
		>
	Type auto constexpr inline
		Copy
	=	Std::Literal
		<	t_tStateless
		>
	;

	template
		<	typename
				t_tStatelessInvocable
		,	typename
			...	t_tpArgument
		>
	concept
		Invocable
	=	Type
		<	t_tStatelessInvocable
		>
	and	Std::TypeInvocable
		<	t_tStatelessInvocable
		,	t_tpArgument
			...
		>
	and	(	...
		and	Type
			<	t_tpArgument
			>
		)
	and	requires
			(	t_tStatelessInvocable
					c_fStatelessInvocable
			,	t_tpArgument
				...	c_vpArgument
			)
		{
			{	c_fStatelessInvocable
				(	c_vpArgument
					...
				)
			}->	Type
			;
		}
	;

	template
		<	typename
				t_tStatelessInvocable
		,	typename
			...	t_tpArgument
		>
	concept
		Overloaded
	=	Type
		<	t_tStatelessInvocable
		>
	and	Std::TypeOverloaded
		<	t_tStatelessInvocable
		,	t_tpArgument
			...
		>
	and	(	...
		and	Type
			<	t_tpArgument
			>
		)
	and	requires
			(	t_tStatelessInvocable
					c_fStatelessInvocable
			,	t_tpArgument
				...	c_vpArgument
			)
		{
			requires
				(	...
				and	Type
					<	decltype(
							c_fStatelessInvocable
							(	c_vpArgument
							)
						)
					>
				)
			;
		}
	;
}
