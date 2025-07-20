export module Meta.Dispatch.StepPair;

import Meta.Size;

import std;

export namespace
	Meta::Dispatch
{
	template
		<	typename
				t_tFunction
		>
	struct
		StepPair final
	{
		auto
		(	*m_fNext
		)	(	std::string_view
			,	USize
			)
		->	StepPair
		;

		t_tFunction
			*m_fFinal
		;

		auto constexpr inline
		(	operator()
		)	(	std::string_view
					i_rString
			,	USize
					i_vOffset
			)
		{	(	*this
			=	m_fNext
				(	i_rString
				,	i_vOffset
				)
			);
		}
	};
}
