export module ATR.Member.Ordered;

import ATR.Member.Compare.Name;
import ATR.Member.CountedBuffer;
import ATR.Member.Name;

import Meta.Size;

import Std;

using ::Meta::USize;

export namespace
	ATR::Member
{
	template
		<	typename
				t_tIterator
		>
	[[nodiscard]]
	auto constexpr
	(	lower_bound
	)	(	t_tIterator
				i_aBegin
		,	t_tIterator
				i_aEnd
		,	NameView
				i_rName
		)
		noexcept
	->	t_tIterator
	{	return
		::std::lower_bound
		(	i_aBegin
		,	i_aEnd
		,	i_rName
		,	Compare::Name
			{}
		);
	}

	[[nodiscard]]
	auto constexpr
	(	lower_bound
	)	(	auto
			&	i_rCountedBuffer
		,	NameView
				i_rName
		)
		noexcept
	{	return
		lower_bound
		(	i_rCountedBuffer
			.	begin
				()
		,	i_rCountedBuffer
			.	end
				()
		 ,	i_rName
		);
	}

	[[nodiscard]]
	auto constexpr
	(	contains
	)	(	auto const
			&	i_rBuffer
		,	NameView
				i_rName
		)
		noexcept
	->	bool
	{
		auto const
			aAliasEnd
		=	i_rBuffer
			.	end
				()
		;

		auto const
			aPosition
		=	::ATR::Member::lower_bound
			(	i_rBuffer
			,	i_rName
			)
		;

		return
		(	(	aPosition
			!=	aAliasEnd
			)
		and	(	aPosition
				->	Name
			==	i_rName
			)
		);
	}

	template
		<	typename
				t_tElement
		,	USize
				t_vMaxCount
		>
	auto constexpr
	(	emplace
	)	(	CountedBuffer
			<	t_tElement
			,	t_vMaxCount
			>
			&	i_rCountedBuffer
		,	NameView
				i_rNameView
		)
	->	t_tElement&
	{
		if	(	i_rCountedBuffer
				.	size
					()
			>=	i_rCountedBuffer
				.	capacity
					()
			)
		{
			::std::unreachable
			();
		}

		auto
			aInsertPosition
		=	::ATR::Member::lower_bound
			(	i_rCountedBuffer
			,	i_rNameView
			)
		;

		::std::move_backward
		(	aInsertPosition
		,	i_rCountedBuffer
			.	end
				()
		,	::std::next
			(	i_rCountedBuffer
				.	end
					()
			)
		);

		aInsertPosition
		->	Name
		=	i_rNameView
		;

		++	i_rCountedBuffer
			.	Count
		;
		return
		*	aInsertPosition
		;
	}
}
