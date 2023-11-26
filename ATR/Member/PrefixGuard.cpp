export module ATR.Member.PrefixGuard;

import Meta.Generic.ValueGuard;
import Meta.String.Hash;

using ::Meta::Generic::ValueGuard;
using ::Meta::String::Hash;

export namespace
	ATR::Member
{
	class
		[[nodiscard("Discarding a PrefixGuard equates to doing nothing")]]
		PrefixGuard
	{
		ValueGuard<Hash>
			m_vHashGuard
		;
		ValueGuard<short>
			m_vPrefixIndexGuard
		;

	public:
		[[nodiscard("Discarding a PrefixGuard equates to doing nothing")]]
		explicit(true) constexpr inline
		(	PrefixGuard
		)	(	Hash
				&	i_rCurrent
			,	char const
				*	i_vNewPrefix
			,	short
				&	i_rCurrentIndex
			,	short
					i_vNewIndex
			)
			noexcept
		:	m_vHashGuard
			{	i_rCurrent
			,	//	Nested prefixes are appended
					i_rCurrent
				+	i_vNewPrefix
			}
		,	m_vPrefixIndexGuard
			{	i_rCurrentIndex
			,	static_cast<short&&>(i_vNewIndex)
			}
		{}
	};
}
