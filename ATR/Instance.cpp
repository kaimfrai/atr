export module ATR.Instance;

import ATR.Address;
import ATR.Layout.Create;
import ATR.Layout.Offset;
import ATR.Member.Config;
import ATR.Member.Storage;

import Meta.ID;
import Meta.String.Hash;

using ::ATR::Layout::CreateType;
using ::ATR::Layout::Offset_For;
using ::ATR::Member::Config_Of;
using ::ATR::Member::ProtoDynamicMember_Of;
using ::ATR::Member::ProtoStaticMember_Of;

using ::Meta::ProtoID;
using ::Meta::String::ImplicitHash;

export namespace
	ATR
{
	template
		<	ProtoID
				t_tName
		>
	struct
		Instance
	{
		using
			LayoutType
		=	CreateType
			<	t_tName
			>
		;

		[[no_unique_address]]
		LayoutType
			Layout
		;

		t_tName static constexpr inline
			TypeName
		{};

		auto static constexpr inline
		&	Config
		=	Config_Of
			<	t_tName
			>
		;

		template
			<	ImplicitHash
					t_vMemberName
			>
		using
			Offset_Of
		=	Offset_For
			<	Config
				.	FindMemberInfo
					(	t_vMemberName
					)
			>
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	ProtoDynamicMember_Of<t_tName> auto
					i_vMemberID
			)	&
			noexcept
		->	decltype(auto)
		{	return
				Layout
			->*	Offset_Of<i_vMemberID>
				{}
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	ProtoDynamicMember_Of<t_tName> auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(auto)
		{	return
				Layout
			->*	Offset_Of<i_vMemberID>
				{}
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	ProtoDynamicMember_Of<t_tName> auto
					i_vMemberID
			)	&&
			noexcept
		->	auto
		{	return
				static_cast<LayoutType&&>
				(	Layout
				)
			->*	Offset_Of<i_vMemberID>
				{}
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	operator[]
		)	(	ProtoStaticMember_Of<t_tName> auto
					i_vMemberID
			)
			noexcept
		->	decltype(auto)
		{	return
			Offset_Of<i_vMemberID>
			{}();
		}

		template
			<	ProtoID
					t_tFunctionName
			,	typename
				...	t_tpArgument
			>
		requires
			ProtoAddress
			<	t_tFunctionName
			,	Instance&
			,	t_tpArgument
				...
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator()
		)	(	t_tFunctionName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)	&
			noexcept
		->	decltype(auto)
		{	return
			Address
			<	t_tFunctionName
			,	Instance&
			,	t_tpArgument
				...
			>(	ForwardErased
				(	this
				)
			,	ForwardErased
				(	i_rpArgument
				)
				...
			);
		}

		template
			<	ProtoID
					t_tFunctionName
			,	typename
				...	t_tpArgument
			>
		requires
			ProtoAddress
			<	t_tFunctionName
			,	Instance const&
			,	t_tpArgument
				...
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator()
		)	(	t_tFunctionName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)	const&
			noexcept
		->	decltype(auto)
		{	return
			Address
			<	t_tFunctionName
			,	Instance const&
			,	t_tpArgument
				...
			>(	ForwardErased
				(	this
				)
			,	ForwardErased
				(	i_rpArgument
				)
				...
			);
		}

		template
			<	ProtoID
					t_tFunctionName
			,	typename
				...	t_tpArgument
			>
		requires
			ProtoAddress
			<	t_tFunctionName
			,	Instance&&
			,	t_tpArgument
				...
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator()
		)	(	t_tFunctionName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)	&&
			noexcept
		->	decltype(auto)
		{	return
			Address
			<	t_tFunctionName
			,	Instance const&
			,	t_tpArgument
				...
			>(	ForwardErased
				(	this
				)
			,	ForwardErased
				(	i_rpArgument
				)
				...
			);
		}
	};
}
