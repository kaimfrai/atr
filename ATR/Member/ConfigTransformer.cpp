export module ATR.Member.ConfigTransformer;

import ATR.Member.Name;

import Meta.Token.Type;

import Std;

export namespace
	ATR::Member
{
	template
		<	typename
				t_tConfig
		,	typename
			...	t_tpTransform
		>
	class
		ConfigTransformer
	{
		t_tConfig
		*	m_aConfig
		;

	public:
		explicit(true) constexpr
		(	ConfigTransformer
		)	(	t_tConfig
				&	i_rConfig
			,	t_tpTransform
				...
			)
			noexcept
		:	m_aConfig
			{	::std::addressof
				(	i_rConfig
				)
			}
		{}

		auto constexpr
		(	operator()
		)	(	NameView
					i_rMemberName
			,	NameView
					i_rTarget
			)
			noexcept
		{
			(*	m_aConfig
			)	(	i_rMemberName
				,	i_rTarget
				)
			;
		}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	NameView
					i_rMemberName
			,	::Meta::TypeToken<t_tEntity>
					i_vType
			)
			noexcept
		{
			(*	m_aConfig
			)	(	i_rMemberName
				,	(	i_vType
					+	...
					+	t_tpTransform
						{}
					)
				)
			;
		}
	};

	template
		<	typename
				t_tConfig
		,	typename
			...	t_tpTransform
		>
	(	ConfigTransformer
	)	(	t_tConfig
		,	t_tpTransform
			...
		)
	->	ConfigTransformer
		<	t_tConfig
		,	t_tpTransform
			...
		>
	;
}
