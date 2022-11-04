export module Meta.Token:Sequence;

export import :Index;

export import Meta.Arithmetic;

import Std;

namespace
	Meta
{
	template
		<	USize
				t_nLength
		>
	auto constexpr inline
	(	MakeSequence
	)	(	IndexToken<t_nLength>
		)
	{	return
		[]	<	USize
				...	t_npIndex
			>(	::std::index_sequence
				<	t_npIndex
					...
				>
			)
		{	return
			IndexToken
			<	t_npIndex
				...
			>{};
		}(	::std::make_index_sequence
			<	t_nLength
			>{}
		);
	}
}

export namespace
	Meta
{
	template
		<	USize
				t_nSize
		>
	auto constexpr inline
		Sequence
	=	MakeSequence
		(	Index<t_nSize>
		)
	;

	template
		<	USize
				t_nSize
		>
	auto constexpr inline
		ZeroSequence
	=	(	Sequence<t_nSize>
		=	Index<0uz>
		)
	;

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
		auto constexpr
		(	operator()
		)	(	IgnoreIndexedElement<t_npFront>
				...
			,	t_tSelection
				*	i_aSeĺection
			,	...
			)	const
		->	t_tSelection*
		{	return i_aSeĺection;	}
	};

	template
		<	USize
			...	t_npFront
		>
	(	SelectByIndex
	)	(	Token::Index<t_npFront...>
		)
	->	SelectByIndex<t_npFront...>
	;
}
