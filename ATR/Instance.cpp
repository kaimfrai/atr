export module ATR.Instance;

import ATR.Address;
import ATR.Layout.Type;

import Meta.ID.Concept;
import Meta.ID.StringLiteral;
import Meta.ID.Alias;
import Meta.Lex.Tokenizer;

using ::Meta::ProtoID;

export namespace
	ATR
{
	template
		<	Meta::ProtoID
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

		using
			LayoutType
		=	CreateLayoutType
			<	t_tName
			>
		;

		using LayoutType::operator[];

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
