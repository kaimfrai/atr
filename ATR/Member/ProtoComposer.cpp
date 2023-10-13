export module ATR.Member.ProtoComposer;

import ATR.Member.PrefixGuard;

import Meta.ID;
import Meta.Token.Type;

import Std;

using ::Meta::Type;

using ::Meta::Literals::operator""_id;

export namespace
	ATR::Member
{
	template
		<	typename
				t_tProto
		>
	concept
		ProtoComposer
	=	requires
			(	t_tProto
				&&	c_rComposer
			,	char const
				(&	c_rMemberName
				)	[]
			,	char const
				(&	c_rTargetName
				)	[]
			,	char const
				(&	c_rPrefix
				)	[]
			)
		{
			{	c_rComposer
				.	Alias
					(	c_rMemberName
					,	c_rTargetName
					)
			}	noexcept
			->	::std::same_as
				<	t_tProto&&
				>
			;
			{	c_rComposer
				.	Member
					(	c_rMemberName
					,	Type<int>
					)
			}	noexcept
			->	::std::same_as
				<	t_tProto&&
				>
			;
			{	c_rComposer
				.	Splice
					(	"Base"_id
					)
			}	noexcept
			->	::std::same_as
				<	t_tProto&&
				>
			;
			{	c_rComposer
				.	ScopedPrefix
					(	c_rPrefix
					)
			}	noexcept
			->	::std::same_as
				<	PrefixGuard
				>
			;
		}
	;
}
