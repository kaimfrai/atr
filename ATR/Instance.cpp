export module ATR.Instance;

import ATR.Address;
import ATR.Layout.Type;
import ATR.Member.Storage;
import ATR.Member.Config;
import ATR.Member.OffsetOf;

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
			Member::OffsetOf
			(	i_vMemberID
			,	TypeName
			)(	*this
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
			Member::OffsetOf
			(	i_vMemberID
			,	TypeName
			)(	*this
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
			Member::OffsetOf
			(	i_vMemberID
			,	TypeName
			)(	::std::move(*this)
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
			Member::OffsetOf
			(	i_vMemberID
			,	TypeName
			)();
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
			(	AddressNoexcept
				<	t_tFunctionName
				,	Instance&
				,	t_tpArgument
					...
				>
			)
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
			(	AddressNoexcept
				<	t_tFunctionName
				,	Instance const&
				,	t_tpArgument
					...
				>
			)
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
			(	AddressNoexcept
				<	t_tFunctionName
				,	Instance&&
				,	t_tpArgument
					...
				>
			)
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

	template
		<	Literal
				t_vTypeID
		>
	using
		Type
	=	::ATR::Instance
		<	ID
			<	t_vTypeID
			>
		>
	;
}
