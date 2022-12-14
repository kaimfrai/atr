export module Meta.Dispatch:StepPair;

export import Meta.Arithmetic;

export import Std;

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

		auto constexpr
		(	operator()
		)	(	std::string_view
					i_sString
			,	USize
					i_nOffset
			)
		{	(	*this
			=	m_fNext
				(	i_sString
				,	i_nOffset
				)
			);
		}
	};
}
