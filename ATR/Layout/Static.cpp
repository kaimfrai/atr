export module ATR.Layout.Static;

import ATR.Layout.Member;

import Meta.ID.Concept;

using ::Meta::ProtoID;

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
		static auto constexpr
		(	operator()
		)	()
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
		,	ProtoID
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
		static auto constexpr
		(	operator[]
		)	(	t_tName
			)
			noexcept
		->	t_tData
		{	return {};	}
	};

	template<>
	struct
		StaticData<>
	{};
}
