export module Meta.Dispatch.Final;

import Meta.Dispatch.Error;
import Meta.Dispatch.Path;

import Meta.Lex.Match;
import Meta.Lex.FreeFunctionTokenizer;
import Meta.Lex.Function;
import Meta.ID;

import Std;

export namespace
	Meta::Dispatch
{
	template
		<	typename
				t_tFunction
		,	ProtoID
				t_tID
		>
	struct
		Final final
	:	Final
		<	Match_To
			<	t_tFunction
			,	Lex::FreeFunctionTokenizer
			>
		,	t_tID
		>
	{};

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpArgument
		,	typename
			...	t_tpQualifier
		,	ProtoID
				t_tID
		>
	struct
		Final
		<	Lex::MatchFunction
			<	Lex::MatchSignature
				<	t_tResult
				,	t_tpArgument
					...
				>
			,	t_tpQualifier
				...
			>
		,	t_tID
		>
	{
		auto static constexpr
		(	operator()
		)	(	typename t_tpArgument::Entity
				...	i_rpArgument
			)
		->	typename t_tResult::Entity
		{
			auto static constexpr
				vPath
			=	PathID
				<	typename
					Lex::MatchFunction
					<	Lex::MatchSignature
						<	t_tResult
						,	t_tpArgument
							...
						>
					,	t_tpQualifier
						...
					>
				::	Entity
				,	t_tID
				>{}
			;
			if	constexpr
				(	requires
					{	Call
						(	vPath
						,	std::forward<typename t_tpArgument::Entity>
							(	i_rpArgument
							)
							...
						);
					}
				)
			{	return
				Call
				(	vPath
				,	std::forward<typename t_tpArgument::Entity>
					(	i_rpArgument
					)
					...
				);
			}
			else
			{	throw
				NoDefinitionError
				{	t_tID{}
				};
			}
		}
	};
}
