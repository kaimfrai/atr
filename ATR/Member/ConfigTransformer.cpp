export module ATR.Member.ConfigTransformer;

import ATR.Member.ConfigBuilder;

import Meta.String.Concept;
import Meta.String.Chain;
import Meta.Token.Type;

import Std;

using ::Meta::String::Chain;
using ::Meta::ProtoID;

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

		[[nodiscard]]
		explicit(true) constexpr
		(	operator
			ConfigBuilder
		)	()	&&
			noexcept
		{	return
			static_cast<ConfigBuilder&&>
			(	*	m_aConfig
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Chain
					i_rMemberName
			,	Chain
					i_rTarget
			)
			noexcept
		->	ConfigTransformer&&
		{
			(*	m_aConfig
			)	(	i_rMemberName
				,	i_rTarget
				)
			;
			return
			static_cast<ConfigTransformer&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	char const
				*	i_aMemberName
			,	char const
				*	i_aTarget
			)
			noexcept
		->	ConfigTransformer&&
		{
			(*	m_aConfig
			)	(	i_aMemberName
				,	i_aTarget
				)
			;
			return
			static_cast<ConfigTransformer&&>
			(	*this
			);
		}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Chain
					i_rMemberName
			,	::Meta::TypeToken<t_tEntity>
					i_vType
			)
			noexcept
		->	ConfigTransformer&&
		{
			(void)
			(*	m_aConfig
			)	(	i_rMemberName
				,	(	i_vType
					+	...
					+	t_tpTransform
						{}
					)
				)
			;
			return
			static_cast<ConfigTransformer&&>
			(	*this
			);
		}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	char const
				*	i_aMemberName
			,	::Meta::TypeToken<t_tEntity>
					i_vType
			)
			noexcept
		->	ConfigTransformer&&
		{	return
			operator()
			(	Chain
				{	i_aMemberName
				}
			,	i_vType
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	ProtoID auto
					i_vBaseID
			)
			noexcept
		->	ConfigTransformer&&
		{	return
			Configure
			(	i_vBaseID
			,	static_cast<ConfigTransformer&&>
				(	*this
				)
			);
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
