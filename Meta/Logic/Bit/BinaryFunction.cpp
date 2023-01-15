export module Meta.Logic.Bit.BinaryFunction;

import Meta.Logic.Bit.Term;

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
		(*)	(	Term const&
			,	Term const&
			)
		->	t_tResult
	;
}
