export module ATR.Member.CountedBuffer;

import Meta.Size;

import Std;

using ::Meta::SSize;
using ::Meta::USize;

export namespace
	ATR::Member
{
	template
		<	typename
				t_tElement
		,	USize
				t_vMaxCount
		>
	struct
		CountedBuffer
	{
		using
			value_type
		=	t_tElement
		;

		using
			BufferType
		=	value_type
				[	t_vMaxCount
				]
		;

		using
			iterator
		=	value_type
			*
		;

		using
			const_iterator
		=	value_type const
			*
		;

		BufferType
			Buffer
		{};

		SSize
			Count
		{};

		[[nodiscard]]
		auto constexpr
		(	empty
		)	()	const
			noexcept
		->	bool
		{	return
				Count
			<=	0z
			;
		}

		[[nodiscard]]
		auto constexpr
		(	size
		)	()	const
			noexcept
		->	USize
		{	return
			static_cast<USize>
			(	Count
			);
		}

		[[nodiscard]]
		auto static constexpr
		(	capacity
		)	()
			noexcept
		->	USize
		{	return
				t_vMaxCount
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	SSize
					i_vIndex
			)	&
			noexcept
		->	value_type&
		{	return
			Buffer
				[	static_cast<USize>
					(	i_vIndex
					)
				]
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	SSize
					i_vIndex
			)	const&
			noexcept
		->	value_type const&
		{	return
			Buffer
				[	static_cast<USize>
					(	i_vIndex
					)
				]
			;
		}

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	&
			noexcept
		->	iterator
		{	return
			::std::begin
			(	Buffer
			);
		}

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	const&
			noexcept
		->	const_iterator
		{	return
			::std::begin
			(	Buffer
			);
		}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	&
			noexcept
		->	iterator
		{	return
			::std::next
			(	begin
				()
			,	Count
			);
		}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	const&
			noexcept
		->	const_iterator
		{	return
			::std::next
			(	begin
				()
			,	Count
			);
		}

		auto constexpr
		(	push_back
		)	(	value_type const
				&	i_rValue
			)	&
			noexcept
		->	void
		{
			(*this)
				[	Count
				]
			=	i_rValue
			;
			++	Count
			;
		}

		[[nodiscard]]
		auto friend constexpr
		(	operator==
		)	(	CountedBuffer const
				&
			,	CountedBuffer const
				&
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		auto friend constexpr
		(	operator<=>
		)	(	CountedBuffer const
				&	i_rLeft
			,	CountedBuffer const
				&	i_rRight
			)
			noexcept
		->	::std::strong_ordering
		{	return
			::std::lexicographical_compare_three_way
			(	i_rLeft
				.	begin
					()
			,	i_rLeft
				.	end
					()
			,	i_rRight
				.	begin
					()
			,	i_rRight
				.	end
					()
			);
		}
	};
}
