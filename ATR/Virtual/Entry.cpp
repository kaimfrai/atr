export module ATR.Virtual.Entry;

import ATR.Address;

import Meta.Lex.Function;
import Meta.ID.Concept;
import Meta.Token.Type;

import Std;

using ::Meta::TypeToken;
using ::Meta::Lex::MatchFunction;
using ::Meta::Lex::MatchTypeSignature;
using ::Meta::TypeToken;
using ::Meta::ProtoID;

export namespace
	ATR::Virtual
{
	template
		<	ProtoID
		,	typename
		>
	struct
		Entry
	;

	template
		<	ProtoID
				t_tFuncID
		,	typename
				t_tResult
		,	typename
				t_tInitial
		,	typename
			...	t_tpArgument
		,	typename
			...	t_tpNoexcept
		>
	struct
		Entry
		<	t_tFuncID
		,	MatchFunction
			<	MatchTypeSignature
				<	t_tResult
				,	t_tInitial
				,	t_tpArgument
					...
				>
			,	t_tpNoexcept
				...
			>
		>
	{
		static bool constexpr
			IsNoexcept
		=	sizeof...(t_tpNoexcept)
		>	0uz
		;

		auto
		(*	Function
		)	(	t_tInitial
			,	t_tpArgument
				...
			)
			noexcept(IsNoexcept)
		->	t_tResult
		{};

		template
			<	typename
					t_tObject
			>
		explicit(true) constexpr
		(	Entry
		)	(	TypeToken
				<	t_tObject
				>
			)
		requires
			ProtoAddress
			<	t_tFuncID
			,	t_tObject
			,	t_tpArgument
				...
			>
		:	Function
			{	Address
				<	t_tFuncID
				,	t_tObject
				,	t_tpArgument
					...
				>
			}
		{}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	t_tFuncID
			,	t_tInitial
					i_vInitial
			,	t_tpArgument
				&&
				...	i_rpArgument
			)	const
			noexcept(IsNoexcept)
		->	t_tResult
		{	return
			Function
			(	::std::forward
				<	t_tInitial
				>(	i_vInitial
				)
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}
	};
}
