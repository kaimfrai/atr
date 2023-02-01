export module ATR.Virtual.Entry;

import ATR.Address;

import Meta.Lex.Function;
import Meta.ID.Concept;
import Meta.Token.Type;

import Std;

using ::Meta::Lex::Func;
using ::Meta::Lex::MatchSignature;
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
		,	Func
			<	MatchSignature
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

		using
			TFunction
		=	typename
				Func
				<	MatchSignature
					<	t_tResult
					,	t_tInitial
					,	t_tpArgument
						...
					>
				,	t_tpNoexcept
					...
				>
			::	Entity
		;

		TFunction
		*	Function
		{};

		template
			<	typename
					t_tObject
			>
		explicit constexpr
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
			,	typename t_tInitial::Entity
					i_vInitial
			,	typename t_tpArgument::Entity
				&&
				...	i_rpArgument
			)	const
			noexcept(IsNoexcept)
		->	typename t_tResult::Entity
		{	return
			Function
			(	::std::forward
				<	typename t_tInitial::Entity
				>(	i_vInitial
				)
			,	::std::forward
				<	typename t_tpArgument::Entity
				>(	i_rpArgument
				)
				...
			);
		}
	};
}
