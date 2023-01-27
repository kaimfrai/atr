export module Meta.Data.Aggregate.Void;

import Meta.Data.Aggregate.Primary;
import Meta.Data.Object;
import Meta.Lex.CV;

export namespace
	Meta::Data
{
	using ::Meta::Data::Aggregate;

	template
		<	typename
			...	t_tpQualifier
		>
	struct
		Aggregate
		<	Lex::MatchCV
			<	void
			,	t_tpQualifier
				...
			>
		>
	:	Object
		<	typename
				Lex::MatchCV
				<	void
				,	t_tpQualifier
					...
				>
			::	Entity
		>
	{};
}
