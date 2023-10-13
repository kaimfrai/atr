export module ATR.Member.CompositionTransformer;

import ATR.Member.PrefixGuard;
import ATR.Member.ProtoComposer;

import Meta.ID;
import Meta.String.Hash;
import Meta.Token.Type;

import Std;

using ::Meta::ProtoID;
using ::Meta::String::ImplicitHash;
using ::Meta::TypeToken;

export namespace
	ATR::Member
{
	template
		<	ProtoComposer
				t_tComposer
		,	typename
			...	t_tpTransform
		>
	class
		CompositionTransformer
	{
		t_tComposer
		&	m_rComposer
		;

	public:
		explicit(true) constexpr inline
		(	CompositionTransformer
		)	(	t_tComposer
				&	i_rComposer
			,	t_tpTransform
				...
			)
			noexcept
		:	m_rComposer
			{	i_rComposer
			}
		{}

		auto constexpr inline
		(	Alias
		)	(	ImplicitHash
					i_vMemberName
			,	ImplicitHash
					i_vTargetName
			)
			noexcept
		->	CompositionTransformer&&
		{
			m_rComposer
			.	Alias
				(	i_vMemberName
				,	i_vTargetName
				)
			;
			return
				static_cast<CompositionTransformer&&>
				(	*this
				)
			;
		}

		template
			<	typename
					t_tEntity
			>
		auto constexpr inline
		(	Member
		)	(	ImplicitHash
					i_vMemberName
			,	TypeToken<t_tEntity>
					i_vType
			)
			noexcept
		->	CompositionTransformer&&
		{
			m_rComposer
			.	Member
				(	i_vMemberName
				,	(	i_vType
					+	...
					+	t_tpTransform
						{}
					)
				)
			;
			return
				static_cast<CompositionTransformer&&>
				(	*this
				)
			;
		}

		auto constexpr inline
		(	Splice
		)	(	ProtoID auto
					i_vBaseID
			)
			noexcept
		->	CompositionTransformer&&
		{	return
				Recompose
				(	static_cast<CompositionTransformer&&>
					(	*this
					)
				,	i_vBaseID
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	ScopedPrefix
		)	(	ImplicitHash
					i_vPrefix
			)
			noexcept
		->	PrefixGuard
		{	return
				m_rComposer
				.	ScopedPrefix
					(	i_vPrefix
					)
			;
		}
	};

	template
		<	typename
				t_tComposer
		,	typename
			...	t_tpTransform
		>
	(	CompositionTransformer
	)	(	t_tComposer
		,	t_tpTransform
			...
		)
	->	CompositionTransformer
		<	t_tComposer
		,	t_tpTransform
			...
		>
	;
}
