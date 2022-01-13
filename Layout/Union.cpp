export module Layout.Union;

export import Layout.Fork;
export import ID.Data;
#include <Meta/TypeInfo.hpp>

export namespace
	Layout
{
	template
		<	typename
				t_tNorthArea
		,	typename
				t_tSouthArea
		>
	union
		Union
	{
		t_tNorthArea
			NorthArea
		;

		t_tSouthArea
			SouthArea
		;

		constexpr
		explicit
			Union
			(	Meta::TypeInfo
				<	t_tNorthArea
				>
			)
		:	NorthArea
			{}
		{
			NorthArea.Value = {};
		}

		template
			<	Meta::TypeInstance
					t_tInitializer
			>
		requires
			Std::ConstructibleFrom
			<	t_tNorthArea
			,	t_tInitializer
			>
		constexpr
		explicit
			Union
			(	t_tInitializer
					i_vInitializer
			)
		:	NorthArea
			{	i_vInitializer
			}
		{}

		constexpr
		explicit
			Union
			(	Meta::TypeInfo
				<	t_tSouthArea
				>
			)
		:	SouthArea
			{}
		{
			SouthArea.Value = {};
		}

		template
			<	Meta::TypeInstance
					t_tInitializer
			>
		requires
			Std::ConstructibleFrom
			<	t_tSouthArea
			,	t_tInitializer
			>
		constexpr
		explicit
			Union
			(	t_tInitializer
					i_vInitializer
			)
		:	SouthArea
			{	i_vInitializer
			}
		{}

		/// access const members of the north member area
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	MemberAccessIDOf
				<	t_tNorthArea
					const
				>	auto
					i_vMemberID
			)	const
		noexcept
		->	decltype(auto)
		{	return
				NorthArea
				[	i_vMemberID
				]
			;
		}

		/// access non-const members of the north member area
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	MemberAccessIDOf
				<	t_tNorthArea
				>	auto
					i_vMemberID
			)
		noexcept
		->	decltype(auto)
		{	return
				NorthArea
				[	i_vMemberID
				]
			;
		}

		/// access const members of the south member area
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	MemberAccessIDOf
				<	t_tSouthArea
					const
				>	auto
					i_vMemberID
			)	const
		noexcept
		->	decltype(auto)
		{	return
				SouthArea
				[	i_vMemberID
				]
			;
		}

		/// access non-const members of the south member area
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	MemberAccessIDOf
				<	t_tSouthArea
				>	auto
					i_vMemberID
			)
		noexcept
		->	decltype(auto)
		{	return
				SouthArea
				[	i_vMemberID
				]
			;
		}
	};
}
