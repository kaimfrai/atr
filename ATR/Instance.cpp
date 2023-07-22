export module ATR.Instance;

import ATR.Address;
import ATR.Layout.Create;
import ATR.Member.Config;
import ATR.Member.Offset;
import ATR.Member.Storage;

import Meta.ID;
import Meta.String.Hash;

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
	:	Layout::CreateType
		<	t_tName
		>
	{
		t_tName static constexpr inline
			TypeName
		{};

		auto static constexpr inline
		&	Config
		=	Member::Config_Of
			<	t_tName
			>
		;

		template
			<	ImplicitHash
					t_vMemberName
			>
		using
			Offset_Of
		=	Member::Offset_For
			<	Config
				.	FindMemberInfo
					(	t_vMemberName
					)
			>
		;

		using
			LayoutType
		=	Layout::CreateType
			<	t_tName
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
			Offset_Of<i_vMemberID>
			{}(	*this
			);
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
			Offset_Of<i_vMemberID>
			{}
			(	*this
			);
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
			Offset_Of<i_vMemberID>
			{}(	static_cast<Instance&&>
				(	*this
				)
			);
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

		/// call non-const member functions
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
