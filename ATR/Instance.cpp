export module ATR.Instance;

import ATR.Address;
import ATR.Layout.Type;
import ATR.Member.Definition;
import ATR.Member.Contains;
import ATR.Member.OffsetOf;
import ATR.Member.Offset;

import Meta.ID.Concept;
import Meta.ID.StringLiteral;
import Meta.ID.Alias;
import Meta.Lex.Tokenizer;
import Meta.Token.Type;

using ::Meta::ProtoID;
using ::ATR::Member::ContainsDynamic;
using ::ATR::Member::ContainsStatic;
using ::ATR::Member::OffsetOf;

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
		static auto constexpr
		&	TypeName
		=	t_tName
		::	RawArray
		;

		static auto const constexpr
		&	MemberList
		=	Member::All_Of
			<	TypeName
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
		(	operator []
		)	(	ProtoID auto
					i_vMemberID
			)	&
			noexcept
		->	decltype(auto)
		requires
			(	ContainsDynamic
				(	MemberList
				,	i_vMemberID.StringView
				)
			)
		{	return
			OffsetOf
			(	i_vMemberID
			,	Meta::Type<Instance>
			)(	this
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator []
		)	(	ProtoID auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(auto)
		requires
			(	ContainsDynamic
				(	MemberList
				,	i_vMemberID.StringView
				)
			)
		{	return
			OffsetOf
			(	i_vMemberID
			,	Meta::Type<Instance>
			)(	this
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator []
		)	(	ProtoID auto
					i_vMemberID
			)	&&
			noexcept
		->	auto
		requires
			(	ContainsDynamic
				(	MemberList
				,	i_vMemberID.StringView
				)
			)
		{	return
			OffsetOf
			(	i_vMemberID
			,	Meta::Type<Instance>
			)(	static_cast<Instance const*>
				(	this
				)
			);
		}

		[[nodiscard]]
		static auto constexpr
		(	operator []
		)	(	ProtoID auto
					i_vMemberID
			)
			noexcept
		->	decltype(auto)
		requires
			(	ContainsStatic
				(	MemberList
				,	i_vMemberID.StringView
				)
			)
		{	return
			OffsetOf
			(	i_vMemberID
			,	Meta::Type<Instance>
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
				(	Meta::TokenizeEntity<LayoutType&>{}
				,	*this
				)
			,	ForwardErased
				(	Meta::TokenizeEntity<t_tpArgument>{}
				,	i_rpArgument
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
				(	Meta::TokenizeEntity<Instance const&>{}
				,	*this
				)
			,	ForwardErased
				(	Meta::TokenizeEntity<t_tpArgument>{}
				,	i_rpArgument
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
				(	Meta::TokenizeEntity<Instance&&>{}
				,	*this
				)
			,	ForwardErased
				(	Meta::TokenizeEntity<t_tpArgument>{}
				,	i_rpArgument
				)
				...
			);
		}
	};

	template
		<	Meta::StringLiteral
				t_vTypeID
		>
	using
		Type
	=	::ATR::Instance
		<	Meta::ID_T
			<	t_vTypeID
			>
		>
	;
}
