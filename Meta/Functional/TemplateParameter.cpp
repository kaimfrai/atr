export module Meta.Functional.TemplateParameter;

import std;

export namespace
	Meta
{
	/**
	 * Enables creating functions that work like templates but are not.
	 * To be used as a function parameter making use of implicit conversions.
	 * For zero or multiple arguments {} are required.
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
		explicit(false) constexpr inline
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

		TemplateParameter(TemplateParameter const&) = delete;
		TemplateParameter(TemplateParameter&&) = delete;
		TemplateParameter& operator=(TemplateParameter const&) = delete;
		TemplateParameter& operator=(TemplateParameter&&) = delete;

		[[nodiscard]]
		auto constexpr inline
		(	operator()
		)	()	&&
		->	t_tResult
		{	return static_cast<t_tResult>(m_bResult);	}
	};
}
