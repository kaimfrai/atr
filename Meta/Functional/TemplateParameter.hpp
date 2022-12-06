export module Meta.Functional:TemplateParameter;

import Std;

export namespace
	Meta
{
	/**
	 * Enables creating functions that work like templates but are not.
	 * To be used as a function parameter making use of implicit conversions.
	 * For multiple arguments {} are required.
	 * The second argument is the function body which will recieve all arguments upon creation and store the result.
	 * Use operator() to retrieve the result in the actual function.
	 */
	template
		<	typename
				t_tResult
		,	auto
				t_fTemplate
		>
	class
		TemplateParameter
	{
		t_tResult
			m_bResult
		;
	public:
		template
			<	typename
				...	t_tpArgument
			>
		constexpr
		(	TemplateParameter
		)	(	t_tpArgument
				&&
				...	i_rpArgument
			)
		:	m_bResult
			{	t_fTemplate
				(	std::forward<t_tpArgument>
					(	i_rpArgument
					)
					...
				)
			}
		{}

		auto constexpr
		(	operator()
		)	()	const
		->	t_tResult
		{	return m_bResult;	}
	};
}
