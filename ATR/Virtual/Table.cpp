export module ATR.Virtual.Table;

import Meta.Token.Type;

using ::Meta::TypeToken;

export namespace
	ATR::Virtual
{
	template
		<	typename
			...	t_tpEntry
		>
	struct
		Table
	:	t_tpEntry
		...
	{
		using
			t_tpEntry
		::	operator()
			...
		;

		template
			<	typename
					t_tObject
			>
		explicit(true) constexpr
		(	Table
		)	(	TypeToken
				<	t_tObject
				>	i_vObjectType
			)
		:	t_tpEntry
			{	i_vObjectType
			}
			...
		{}
	};
}
