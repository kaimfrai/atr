export module Meta.Data.Aggregate.Primary;

import Meta.Lex.Tokenizer;

export namespace
	Meta::Data
{
	template
		<	typename
				t_tData
		>
	struct
		Aggregate
	:	Aggregate
		<	TokenizeEntity
			<	t_tData
			>
		>
	{};
}
