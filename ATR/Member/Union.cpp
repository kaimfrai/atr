export module ATR.Member.Union;

import ATR.Member.Info;
import ATR.Member.Alias;
import ATR.Member.List;

import Meta.Size;
import Meta.ID.StringView;

import Std;

using ::Meta::USize;
using ::Meta::StringView;

namespace
	ATR::Member
{
	template
		<	typename
				t_tInfo
		,	auto
				t_nCount
		>
	[[nodiscard]]
	auto constexpr
	(	InsertSorted
	)	(	::std::array<t_tInfo, t_nCount> const
			&	i_rInfos
		,	t_tInfo const
			&	i_rNew
		)
		noexcept
	->	::std::array<t_tInfo, t_nCount + 1uz>
	{
		::std::array<t_tInfo, t_nCount + 1uz>
			vResult
		;

		auto const
			aBegin
		=	i_rInfos.begin()
		;

		auto const
			aEnd
		=	i_rInfos.end()
		;

		auto const
			aPartition
		=	::std::lower_bound
			(	aBegin
			,	aEnd
			,	i_rNew
			)
		;
		auto const
			aInsert
		=	::std::copy
			(	aBegin
			,	aPartition
			,	vResult.begin()
			)
		;
		(	*aInsert
		=	i_rNew
		);
		::std::copy
		(	aPartition
		,	aEnd
		,	::std::next(aInsert)
		);

		return
			vResult
		;
	}

	template
		<	typename
				t_tInfo
		,	auto
				t_nLeftCount
		,	auto
				t_nRightCount
		>
	[[nodiscard]]
	auto constexpr
	(	Merge
	)	(	::std::array<t_tInfo, t_nLeftCount> const
			&	i_rLeft
		,	::std::array<t_tInfo, t_nRightCount> const
			&	i_rRight
		)
	->	::std::array<t_tInfo, t_nLeftCount + t_nRightCount>
	{
		if	constexpr
			(	t_nLeftCount
			==	0uz
			)
		{	return
				i_rRight
			;
		}
		else
		if	constexpr
			(	t_nRightCount
			==	0uz
			)
		{	return
				i_rLeft
			;
		}
		else
		{	::std::array<t_tInfo, t_nLeftCount + t_nRightCount>
				vResult
			;

			auto const
				vLast
			=	::std::set_union
				(	i_rLeft.begin()
				,	i_rLeft.end()
				,	i_rRight.begin()
				,	i_rRight.end()
				,	vResult.begin()
				)
			;

			if	(	vLast
				!=	vResult.end()
				)
			{	(	(void)"Cannot merge arrays with identical elements!"
				,	std::unreachable()
				);
			}
			return
				vResult
			;
		}
	}

	template
		<	USize
				t_nDataCount
		>
	[[nodiscard]]
	auto constexpr
	(	EraseAliased
	)	(	List<t_nDataCount> const
			&	i_rDataList
		,	StringView
				i_vAliased
		)
		noexcept
	->	List<t_nDataCount - 1uz>
	{
		List<t_nDataCount - 1uz>
			vResult
		;
		(	vResult.DynamicSize
		=	i_rDataList.DynamicSize
		);

		auto const
			aBegin
		=	i_rDataList.begin()
		;
		auto const
			aEnd
		=	i_rDataList.end()
		;
		auto const
			aReplaced
		=	::std::find_if
			(	aBegin
			,	aEnd
			,	[	i_vAliased
				]	(	Info const
						&	i_rInfo
					)
				{	return
						i_rInfo.Name
					==	i_vAliased
					;
				}
			)
		;
		if	(	aReplaced
			==	aEnd
			)
		{
			(	(void)"Attempt to alias nonexisting member"
			,	::std::unreachable()
			);
		}

		(	vResult.DynamicSize
		-=	IsDynamic(*aReplaced)
		);

		::std::copy
		(	::std::next(aReplaced)
		,	aEnd
		,	::std::copy
			(	aBegin
			,	aReplaced
			,	vResult.begin()
			)
		);
		return
			vResult
		;
	}
}

export namespace
	ATR::Member
{
	[[nodiscard]]
	auto constexpr
	(	operator +
	)	(	Info const
			&	i_rLeft
		,	Info const
			&	i_rRight
		)
		noexcept
	->	List
		<	2uz
		>
	{
		auto const
		[	vMin
		,	vMax
		]=	::std::minmax
			(	i_rLeft
			,	i_rRight
			)
		;
		return
		{	{	vMin
			,	vMax
			}
		,	IsDynamic(i_rLeft)
		+	IsDynamic(i_rRight)
		};
	}

	template
		<	auto
				t_nDataCount
		>
	[[nodiscard]]
	auto constexpr
	(	operator +
	)	(	List<t_nDataCount> const
			&	i_rList
		,	Info const
			&	i_rInfo
		)
		noexcept
	->	List
		<	t_nDataCount
		+	1uz
		>
	{
		if	constexpr
			(	t_nDataCount
			==	0uz
			)
		{	return
			{	{	i_rInfo
				}
			,	IsDynamic(i_rInfo)
			};
		}
		else
		{	return
			{	InsertSorted
				(	i_rList.DataInfos
				,	i_rInfo
				)
			,	i_rList.DynamicSize
			+	IsDynamic(i_rInfo)
			};
		}
	}

	template
		<	auto
				t_nLeftCount
		,	auto
				t_nRightCount
		>
	[[nodiscard]]
	auto constexpr
	(	operator +
	)	(	List<t_nLeftCount> const
			&	i_rLeft
		,	List<t_nRightCount> const
			&	i_rRight
		)
		noexcept
	->	List
		<	t_nLeftCount
		+	t_nRightCount
		>
	{	return
		{	Merge
			(	i_rLeft.DataInfos
			,	i_rRight.DataInfos
			)
		,	i_rLeft.DynamicSize
		+	i_rRight.DynamicSize
		};
	}

	template
		<	USize
				t_nDataCount
		>
	[[nodiscard]]
	auto constexpr
	(	operator +
	)	(	List<t_nDataCount> const
			&	i_rMembers
		,	AliasInfo
				i_vAlias
		)
	->	AliasedList
		<	1uz
		,	t_nDataCount
		-	1uz
		>
	{	return
		{	{	i_vAlias
			}
		,	EraseAliased
			(	i_rMembers
			,	i_vAlias.Name
			)
		};
	}

	template
		<	USize
				t_nAliasCount
		,	USize
				t_nDataCount
		>
	[[nodiscard]]
	auto constexpr
	(	operator +
	)	(	AliasedList<t_nAliasCount, t_nDataCount> const
			&	i_rMembers
		,	AliasInfo
				i_vAlias
		)
	->	AliasedList
		<	t_nAliasCount
		+	1uz
		,	t_nDataCount
		-	1uz
		>
	{	return
		{	InsertSorted
			(	i_rMembers.AliasInfos
			,	i_vAlias
			)
		,	EraseAliased
			(	i_rMembers.DataInfos
			,	i_vAlias.Name
			)
		};
	}

	template
		<	USize
				t_nAliasCount
		,	USize
				t_nDataCount
		>
	[[nodiscard]]
	auto constexpr
	(	operator +
	)	(	AliasedList<t_nAliasCount, t_nDataCount> const
			&	i_rMembers
		,	Info const
			&	i_rInfo
		)
	->	AliasedList
		<	t_nAliasCount
		,	t_nDataCount
		+	1uz
		>
	{	return
		{	i_rMembers.AliasInfos
		,	i_rMembers.DataInfos
		+	i_rInfo
		};
	}

	template
		<	USize
				t_nLeftAliasCount
		,	USize
				t_nLeftDataCount
		,	USize
				t_nRightAliasCount
		,	USize
				t_nRightDataCount
		>
	[[nodiscard]]
	auto constexpr
	(	operator +
	)	(	AliasedList<t_nLeftAliasCount, t_nLeftDataCount> const
			&	i_rLeft
		,	AliasedList<t_nRightAliasCount, t_nRightDataCount> const
			&	i_rRight
		)
	->	AliasedList
		<	t_nLeftAliasCount
		+	t_nRightAliasCount
		,	t_nLeftDataCount
		+	t_nRightDataCount
		>
	{	return
		{	Merge
			(	i_rLeft.AliasInfos
			,	i_rRight.AliasInfos
			)
		,	i_rLeft.DataInfos
		+	i_rRight.DataInfos
		};
	}
}
