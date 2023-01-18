export module ATR:Layout.Static;

import :Layout.Member;

import Meta.ID.Concept;
import Meta.Lex.Transform;

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
		,	Meta::ProtoID
				t_tName
		>
	struct
		StaticData
		<	::Member
			<	t_tData
			,	t_tName
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
		)	(	t_tName
			,	Meta::Lex::Transform<t_tpTransform...>
			)
		->	StaticMember<t_tData>
		{	return	{};	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
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
