export module Meta.Logic.Bit.BinaryFunction;

import Meta.Logic.BitTerm;

export namespace
	Meta::Logic::Bit
{
	template
		<	typename
				t_tResult
		>
	using
		BinaryFunction
	=	auto
		(*)	(	BitTerm const&
			,	BitTerm const&
			)
		->	t_tResult
	;
}
