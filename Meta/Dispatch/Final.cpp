export module Meta.Dispatch.Final;

export import Meta.Dispatch.Error;
export import Meta.Dispatch.Path;

import Meta.Lex.Tokenizer;
import Meta.ID.Concept;

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
		<	TokenizeEntity
			<	t_tFunction
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
		<	Lex::Func
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
		static auto constexpr
		(	operator()
		)	(	typename t_tpArgument::Entity
				...	i_rpArgument
			)
		->	typename t_tResult::Entity
		{
			auto constexpr
				vPath
			=	PathID
				<	typename
					Lex::Func
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
				{	t_tID::RawArray
				};
			}
		}
	};
}
