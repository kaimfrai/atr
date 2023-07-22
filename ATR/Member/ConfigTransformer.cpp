export module ATR.Member.ConfigTransformer;

import ATR.Member.ConfigBuilder;

import Meta.ID;
import Meta.String.Hash;
import Meta.Token.Type;

import Std;

using ::Meta::String::ImplicitHash;
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
		explicit(true) constexpr inline
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
		explicit(true) constexpr inline
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
		auto constexpr inline
		(	Alias
		)	(	ImplicitHash
					i_vMemberName
			,	ImplicitHash
					i_vTargetName
			)
			noexcept
		->	ConfigTransformer&&
		{
			m_aConfig
			->	Alias
				(	i_vMemberName
				,	i_vTargetName
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
		auto constexpr inline
		(	Member
		)	(	ImplicitHash
					i_vMemberName
			,	::Meta::TypeToken<t_tEntity>
					i_vType
			)
			noexcept
		->	ConfigTransformer&&
		{
			(void)
			m_aConfig
			->	Member
				(	i_vMemberName
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

		[[nodiscard]]
		auto constexpr inline
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
