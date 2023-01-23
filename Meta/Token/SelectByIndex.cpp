export module Meta.Token.SelectByIndex;

import Meta.Token.Index;

import Meta.Size;

export namespace
	Meta::Token
{
	///	Intendend to part of a pack expansion.
	///	A known amount of argument types may be deduced this way.
	template
		<	typename
		,	USize
		>
	concept
		ProtoIndexedElement
	=	true
	;

	///	Intendend to part of a pack expansion.
	///	A known amount of pointer arguments may be ignored this way.
	template
		<	USize
		>
	using
		IgnoreIndexedElement
	=	void const volatile*
	;

	template
		<	USize
			...	t_npFront
		>
	struct
		SelectByIndex final
	{
		[[no_unique_address]]
		Token::Index<t_npFront...>
			FrontSequence
		;

		template
			<	typename
					t_tSelection
			>
		[[nodiscard]]
		static auto constexpr
		(	operator() // NOLINT(cert-dcl50-cpp)
		)	(	IgnoreIndexedElement<t_npFront>
				...
			,	t_tSelection
				*	i_aSeĺection
			,	...
			)
			noexcept
		->	t_tSelection*
		{	return
				i_aSeĺection
			;
		}
	};

	template
		<	USize
			...	t_npFront
		>
	(	SelectByIndex
	)	(	Token::Index
			<	t_npFront
				...
			>
		)
	->	SelectByIndex
		<	t_npFront
			...
		>
	;
}
