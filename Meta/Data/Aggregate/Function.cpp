export module Meta.Data.Aggregate.Function;

import Meta.Data.Aggregate.Primary;
import Meta.Data.Object;
import Meta.Lex.Function;

export namespace
	Meta::Data
{
	using ::Meta::Data::Aggregate;

	template
		<	typename
				t_tSignature
		,	typename
			...	t_tpQualifier
		>
	struct
		Aggregate
		<	Lex::Func
			<	t_tSignature
			,	t_tpQualifier
				...
			>
		>
	:	Object
		<	typename
				Lex::Func
				<	t_tSignature
				,	t_tpQualifier
					...
				>
			::	Entity
		>
	{};
}
