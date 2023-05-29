export module ATR.Instance;

import ATR.Address;
import ATR.Layout.Type;
import ATR.Member.Storage;
import ATR.Member.Config;
import ATR.Member.Offset;

import Meta.Memory.Size.Arithmetic;
import Meta.ID;
import Meta.String.Literal;

import Std;

using ::ATR::Member::ProtoDynamicMember_Of;
using ::ATR::Member::ProtoStaticMember_Of;

using ::Meta::ProtoID;
using ::Meta::ID;
using ::Meta::String::Literal;

export namespace
	ATR
{
	template
		<	ProtoID
				t_tName
		>
	struct
		Instance
	:	CreateLayoutType
		<	t_tName
		>
	{
		t_tName static constexpr
			TypeName
		{};

		auto static constexpr
		&	Config
		=	Member::Config_Of
			<	t_tName
			>
		;

		template
			<	ProtoID
					t_tMemberName
			>
		using
			Offset_Of
		=	Member::Offset_For
			<	Config
				.	FindMemberInfo
					(	t_tMemberName
						{}
					)
			>
		;

		using
			LayoutType
		=	CreateLayoutType
			<	t_tName
			>
		;

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoDynamicMember_Of<t_tName> auto
					i_vMemberID
			)	&
			noexcept
		->	decltype(auto)
		{	return
			Offset_Of<decltype(i_vMemberID)>
			{}(	*this
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoDynamicMember_Of<t_tName> auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(auto)
		{	return
			Offset_Of<decltype(i_vMemberID)>
			{}
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoDynamicMember_Of<t_tName> auto
					i_vMemberID
			)	&&
			noexcept
		->	auto
		{	return
			Offset_Of<decltype(i_vMemberID)>
			{}(	::std::move(*this)
			);
		}

		[[nodiscard]]
		auto static constexpr
		(	operator[]
		)	(	ProtoStaticMember_Of<t_tName> auto
					i_vMemberID
			)
			noexcept
		->	decltype(auto)
		{	return
			Offset_Of<decltype(i_vMemberID)>
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
		auto constexpr
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
		auto constexpr
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
		auto constexpr
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
