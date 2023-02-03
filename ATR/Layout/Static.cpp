export module ATR.Layout.Static;

import ATR.Layout.Member;

import Meta.ID.Concept;

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
