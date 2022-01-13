export module Layout.MemberOffset;

export import Layout.Fork;
export import Layout.DataMember;

export import Std;

#include <ID/Data.hpp>

#include <PackTemplate/Instance.hpp>
#include <Pack/Instance.hpp>
#include <Pack/Type.hpp>
#include <Meta/ValueInfo.hpp>

#include <Std/Concepts.hpp>
#include <Std/Size.hpp>

export namespace
	Layout
{
	/// function object retrieving a member from a void pointer
	template
		<	typename
				t_tMember
		,	Std::USizeType
				t_nOffset
		>
	struct
		MemberOffset
	:	MemberOffset
		<	t_tMember
			const
		,	t_nOffset
		>
	{
		using
			MemberOffset
			<	t_tMember
				const
			,	t_nOffset
			>::	operator()
		;

		[[nodiscard]]
		constexpr
		auto
			operator()
			(	void
				*	i_aObject
			)	const
		noexcept
		{
			if constexpr
				(	Stateless::Type
					<	t_tMember
					>
				)
			{
				return
					t_tMember
					{}
				;
			}
			else
			{
				auto
					aMemberAsChar
				=	static_cast
					<	char
						*
					>(	i_aObject
					)
				+	t_nOffset
				;

				return
					*
					std::launder
					(	static_cast
						<	t_tMember
							*
						>(	static_cast
							<	void
								*
							>(	aMemberAsChar
							)
						)
					)
				;
			}
		}
	};

	/// specialization for const only objects
	template
		<	typename
				t_tMember
		,	Std::USizeType
				t_nOffset
		>
	struct
		MemberOffset
		<	t_tMember
			const
		,	t_nOffset
		>
	{
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	void const
				*	i_aObject
			)	const
		noexcept
		{
			if constexpr
				(	Stateless::Type
					<	t_tMember
					>
				)
			{
				return
					t_tMember
					{}
				;
			}
			else
			{
				auto
					aMemberAsChar
				=	static_cast
					<	char const
						*
					>(	i_aObject
					)
				+	t_nOffset
				;

				return
					*
					std::launder
					(	static_cast
						<	t_tMember const
							*
						>(	static_cast
							<	void const
								*
							>(	aMemberAsChar
							)
						)
					)
				;
			}
		}
	};

	/// increases the offset of a MemberOffset
	template
		<	typename
				t_tMember
		,	Std::USizeType
				t_nOffset
		,	Meta::SizeInfo
				t_tAdditionalOffset
		>
	[[nodiscard]]
	constexpr
	auto
		operator+
		(	MemberOffset
			<	t_tMember
			,	t_nOffset
			>
		,	t_tAdditionalOffset
		)
	noexcept
	->	MemberOffset
		<	t_tMember
		,	t_nOffset
		+	t_tAdditionalOffset
			::	Value
		>
	{	return{};	}

	// stateless members always have offset 0
	template
		<	Stateless::Type
				t_tMember
		>
	[[nodiscard]]
	constexpr
	auto
		operator+
		(	MemberOffset
			<	t_tMember
			,	0_uz
			>
		,	Meta::SizeInfo auto
		)
	noexcept
	->	MemberOffset
		<	t_tMember
		,	0_uz
		>
	{	return{};	}

	/// immitates syntax of pointer to member dereference
	template
		<	typename
				t_tMember
		,	Std::USizeType
				t_nOffset
		>
	[[nodiscard]]
	constexpr
	auto
		operator->*
		(	Std::SameAs
			<	void
			,	std::remove_const_t
			>	auto
			(	*
				i_aObject
			)
		,	MemberOffset
			<	t_tMember
			,	t_nOffset
			>	i_vMemberOffset
		)
	noexcept
	->	decltype(auto)
	{
		return
			i_vMemberOffset
			(	i_aObject
			)
		;
	}

	/// returns a MemberOffset for the given member id if it is present
	template
		<	template
				<	typename
				>
			typename
				t_t1Qualifier
		>
	constexpr
	auto
		OffsetOf
		(	DataMemberInfoInstance auto
				i_vDataMemberInfo
		,	decltype(
				DataMemberName
				(	i_vDataMemberInfo
				)
			)
		)
	noexcept
	{
		using
			ValueType
		=	typename
			decltype(
				DataMemberValueType
				(	i_vDataMemberInfo
				)
			)::	Type
		;

		return
			MemberOffset
			<	t_t1Qualifier
				<	ValueType
				>
			,	0_uz
			>{}
		;
	}

	/// constrains data ids to those that have the Offset function overloaded in a member area
	template
		<	typename
				t_tDataID
		,	typename
				t_tMemberArea
		,	template
				<	typename
				>
			typename
				t_t1Qualifier
		>
	concept
		MemberOffsetIDOf
	=	ID::DataInstance
		<	t_tDataID
		>
	and	requires
			(	t_tDataID
					c_vDataID
			)
		{
			OffsetOf
			<	t_t1Qualifier
			>(	Meta::T<t_tMemberArea>
			,	c_vDataID
			);
		}
	;

	/// returns a MemberOffset for the given member id if it is present in the north area
	template
		<	template
				<	typename
				>
			typename
				t_t1Qualifier
		,	typename
				t_tNorthArea
		,	typename
				t_tSouthArea
		>
	constexpr
	auto
		OffsetOf
		(	Meta::TypeInfo
			<	Fork
				<	t_tNorthArea
				,	t_tSouthArea
				>
			>
		,	MemberOffsetIDOf
			<	t_tNorthArea
			,	t_t1Qualifier
			>	auto
				i_vMemberID
		)
	noexcept
	{
		return
			OffsetOf
			<	t_t1Qualifier
			>(	Meta::T<t_tNorthArea>
			,	i_vMemberID
			)
		;
	}

	/// returns a MemberOffset for the given member id if it is present in the south area
	template
		<	template
				<	typename
				>
			typename
				t_t1Qualifier
		,	typename
				t_tNorthArea
		,	typename
				t_tSouthArea
		>
	constexpr
	auto
		OffsetOf
		(	Meta::TypeInfo
			<	Fork
				<	t_tNorthArea
				,	t_tSouthArea
				>
			>
		,	MemberOffsetIDOf
			<	t_tSouthArea
			,	t_t1Qualifier
			>	auto
				i_vMemberID
		)
	noexcept
	{
		return
			OffsetOf
			<	t_t1Qualifier
			>(	Meta::T<t_tSouthArea>
			,	i_vMemberID
			)
		+	/// offset by the size of the north area
			Meta::V
			<	Std::ByteSizeOf
				<	t_tNorthArea
				>
			>
		;
	}
}
