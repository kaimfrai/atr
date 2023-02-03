export module ATR.Member.Transform;

import ATR.Member.Definition;
import Meta.Token.Type;

import Std;

using ::Meta::RestoreTypeToken;

export namespace
	ATR::Member
{
	template
		<	auto
				t_vList
		>
	[[nodiscard]]
	auto constexpr
	(	operator *
	)	(	Definition<t_vList>
		,	auto
				i_fTransform
		)
		noexcept
	->	decltype(t_vList)
	{
		auto
			vResult
		=	t_vList
		;

		[&]	<	::std::size_t
				...	t_npIndex
			>(	::std::index_sequence<t_npIndex...>
			)
		{	(	...
			,	(	vResult[t_npIndex].Type
				=	(	RestoreTypeToken<t_vList[t_npIndex].Type>
					+	i_fTransform
					)
				)
			);
		}(	::std::make_index_sequence
			<	t_vList
			.	size()
			>{}
		);

		::std::sort
		(	vResult.begin()
		,	vResult.end().base()
		);

		return
			vResult
		;
	}
}
