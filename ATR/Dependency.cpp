export module ATR.Dependency;

import ATR.Erase;

import Meta.String.Concept;
import Meta.String.StringLiteral;
import Meta.String.Alias;
import Meta.Size;
import Meta.Token.SelectByIndex;
import Meta.Token.Index;
import Meta.Token.Type;

import Std;

export namespace
	ATR
{
	/// wraps around an object and provides member access via dependency maps
	template
		<	typename
				t_tArgument
		,	typename
			...	t_tpItem
		>
	struct
		Dependency
	{
		using
			ArgumentType
		=	t_tArgument
		;

		[[no_unique_address]]
		t_tArgument
			Argument
		;

		static auto constexpr
			ItemSequence
		=	::std::make_index_sequence
			<	sizeof...(t_tpItem)
			>{}
		;

		template
			<	Meta::USize
					t_nIndex
			,	typename
				...	t_tpArgument
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Meta::IndexToken<t_nIndex>
			,	t_tpArgument
				&&
				...	i_rpArgument
			)
		->	decltype(auto)
		{
			auto constexpr
				vItemPtr
			=	::Meta::Token::SelectByIndex
				{	::std::make_index_sequence
					<	t_nIndex
					>{}
				}(	static_cast<t_tpItem*>
					(	nullptr
					)
					...
				)
			;
			using
				tItem
			=	decltype
				(	auto
					(	*
						vItemPtr
					)
				)
			;

			if	constexpr
				(	::std::is_invocable_v
					<	tItem
					,	decltype(Argument)
					,	t_tpArgument
						...
					>
				)
			{	return
					tItem
				::	operator()
				(	Argument
				,	::std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				);
			}
			else
			{	return
					tItem
				::	operator ()
				(	::std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				);
			}
		}
	};
}
