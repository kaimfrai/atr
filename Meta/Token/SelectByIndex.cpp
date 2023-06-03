export module Meta.Token.SelectByIndex;

import Std;

export namespace
	Meta::Token
{
	///	Intendend to part of a pack expansion.
	///	A known amount of argument types may be deduced this way.
	template
		<	typename
		,	::std::size_t
		>
	concept
		ProtoIndexedElement
	=	true
	;

	///	Intendend to part of a pack expansion.
	///	A known amount of pointer arguments may be ignored this way.
	template
		<	::std::size_t
		>
	using
		IgnoreIndexedElement
	=	void const volatile*
	;

	template
		<	::std::size_t
			...	t_npFront
		>
	struct
		SelectByIndex final
	{
		[[no_unique_address]]
		::std::index_sequence<t_npFront...>
			FrontSequence
		;

		template
			<	typename
					t_tSelection
			>
		[[nodiscard]]
		auto static constexpr inline
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
		<	::std::size_t
			...	t_npFront
		>
	(	SelectByIndex
	)	(	::std::index_sequence
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
