export module ATR.Member.PrefixGuard;

import Meta.Generic.ValueGuard;
import Meta.String.Hash;

using ::Meta::Generic::ValueGuard;
using ::Meta::String::Hash;

export namespace
	ATR::Member
{
	struct
		[[nodiscard("Discarding a PrefixGuard equates to doing nothing")]]
		PrefixGuard
	:	ValueGuard
		<	Hash
		>
	{
		[[nodiscard("Discarding a PrefixGuard equates to doing nothing")]]
		explicit(true) constexpr inline
		(	PrefixGuard
		)	(	Hash
				&	i_rCurrent
			,	Hash
					i_vNewPrefix
			)
			noexcept
		:	ValueGuard
			{	i_rCurrent
			,	//	Nested prefixes are appended
					i_rCurrent
				+	i_vNewPrefix
			}
		{}
	};
}
