export module ATR.Offset.Member;

import Meta.Memory.Size;
import Meta.Token.Specifier;

using ::Meta::Specifier::Mut;
using ::Meta::BitSize;

export namespace
	ATR::Offset
{
	template
		<	BitSize
				t_nOffset
		,	typename
				t_tData
		>
	struct
		Member
	:	Member
		<	t_nOffset
		,	t_tData const
		>
	{};

	template
		<	BitSize
				t_nOffset
		,	typename
				t_tData
		>
	struct
		Member
		<	t_nOffset
		,	t_tData const
		>
	{};

	template
		<	BitSize
				t_nOffset
		,	typename
				t_tData
		>
	struct
		Member
		<	t_nOffset
		,	Mut<t_tData>
		>
	{};
}
