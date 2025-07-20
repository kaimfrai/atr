export module Evaluation.Dependency.Visitor.CommonResult;

import std;

export namespace
	Visitor
{
	template
		<	auto
				t_fOverload
		,	typename
			...	t_tpCandidate
		>
	using
		CommonResult
	=	::std::common_type_t
		<	::std::invoke_result_t
			<	decltype(t_fOverload)
			,	t_tpCandidate
			>
			...
		>
	;
}
