export module ATR:Layout.Static;

import :ID;
import :Layout.Member;

export namespace
	ATR
{
	template
		<	typename
				t_tMember
		>
	struct
		StaticMember
	{
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	()	const
			noexcept
		->	t_tMember
		{	return
			t_tMember
			();
		}
	};

	template
		<	typename
			...	t_tpStatic
		>
	struct
		StaticData
	:	StaticData
		<	t_tpStatic
		>
		...
	{
		using StaticData<t_tpStatic>::operator[]...;
		using StaticData<t_tpStatic>::OffsetOf...;
	};

	template
		<	typename
				t_tData
		,	char const
			&
			...	t_rpName
		>
	struct
		StaticData
		<	::Member
			<	t_tData
			,	t_rpName
				...
			>
		>
	{
		template
			<	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	ID<t_rpName...>
			,	Meta::Lex::Transform<t_tpTransform...>
			)
		->	StaticMember<t_tData>
		{	return	{};	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ID<t_rpName...>
			)	const
			noexcept
		->	t_tData
		{	return {};	}
	};

	template<>
	struct
		StaticData<>
	{};
}
