export module Meta.Data:Iterator;

import Meta.Size;
import Std;

export namespace
	Meta::Data
{
	template
		<	typename
				t_tValue
		>
	struct
		Iterator
	;

	/// Wraps around a pointer and provides only operations necessary to satisfy std::sentinel_for
	template
		<	typename
				t_tValue
		>
	struct
		Sentinel
	{
		t_tValue
		*	m_aData
		;

		[[nodiscard]]
		auto constexpr
		(	base
		)	()	const
		->	Iterator<t_tValue>
		{	return
			{	m_aData
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator==
		)	(	Iterator<t_tValue const>
					i_aIterator
			,	Sentinel
					i_aSentinel
			)
			noexcept
		->	bool
		{	return
				i_aIterator.m_aData
			==	i_aSentinel.m_aData
			;
		}
	};

	template
		<	typename
				t_tValue
		>
	(	Sentinel
	)	(	t_tValue*
		)
	->	Sentinel
		<	t_tValue
		>
	;

	///	Wraps around a pointer and provides only operations necessary to satisfy std::contiguous_iterator
	template
		<	typename
				t_tValue
		>
	struct
		Iterator
	{
		t_tValue
		*	m_aData
		;

		[[nodiscard]]
		explicit(false) constexpr
		(	operator decltype(auto)
		)	()	const
			noexcept
		{	return
			Iterator<t_tValue const>
			{	m_aData
			};
		}

		[[nodiscard]]
		explicit(false) constexpr
		(	operator Sentinel<t_tValue>
		)	()	const
			noexcept
		{	return
			Sentinel<t_tValue>
			{	m_aData
			};
		}

		[[nodiscard]]
		auto constexpr
		(	operator*
		)	()	const
			noexcept
		->	t_tValue&
		{	return *m_aData;	}

		[[nodiscard]]
		auto constexpr
		(	operator->
		)	()	const
			noexcept
		->	t_tValue*
		{	return m_aData;	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	SSize
					i_nIndex
			)	const
			noexcept
		->	t_tValue&
		{	return *std::ranges::next(m_aData, i_nIndex);	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	const
			noexcept
		->	t_tValue&
		{	return operator[](static_cast<SSize>(i_nIndex));	}

		auto constexpr
		(	operator++
		)	()	&
			noexcept
		->	Iterator&
		{	return *this += 1z;	}

		auto constexpr
		(	operator++
		)	(int)	&
			noexcept
		->	Iterator
		{	return
			std::exchange
			(	*this
			,	std::ranges::next(*this)
			);
		}

		auto constexpr
		(	operator--
		)	()	&
			noexcept
		->	Iterator&
		{	return *this -= 1z;		}

		auto constexpr
		(	operator--
		)	(int)	&
			noexcept
		->	Iterator
		{	return
			std::exchange
			(	*this
			,	std::ranges::prev(*this)
			);
		}

		friend auto constexpr
		(	operator-
		)	(	Iterator
					i_vLeft
			,	Iterator
					i_vRight
			)
			noexcept
		->	SSize
		{	return std::ranges::distance(i_vRight.m_aData, i_vLeft.m_aData);	}

		auto constexpr
		(	operator+=
		)	(	SSize
					i_vOffset
			)	&
			noexcept
		->	Iterator&
		{	m_aData = std::ranges::next(m_aData, i_vOffset);
			return *this;
		}

		auto constexpr
		(	operator-=
		)	(	SSize
					i_vOffset
			)	&
			noexcept
		->	Iterator&
		{	m_aData = std::ranges::prev(m_aData, i_vOffset);
			return *this;
		}

		friend auto constexpr
		(	operator+
		)	(	Iterator
					i_vIterator
			,	SSize
					i_vOffset
			)
			noexcept
		->	Iterator
		{	return i_vIterator += i_vOffset;	}

		friend auto constexpr
		(	operator-
		)	(	Iterator
					i_vIterator
			,	SSize
					i_vOffset
			)
			noexcept
		->	Iterator
		{	return i_vIterator -= i_vOffset;	}

		friend auto constexpr
		(	operator+
		)	(	SSize
					i_vOffset
			,	Iterator
					i_vIterator
			)
			noexcept
		->	Iterator
		{	return i_vIterator += i_vOffset;	}

		[[nodiscard]]
		friend auto constexpr
		(	operator==
		)	(	Iterator
			,	Iterator
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		friend auto constexpr
		(	operator<=>
		)	(	Iterator
			,	Iterator
			)
			noexcept
		=	default;
	};

	template
		<	typename
				t_tValue
		>
	(	Iterator
	)	(	t_tValue*
		)
	->	Iterator
		<	t_tValue
		>
	;
}

export namespace
	std
{
	template
		<	typename
				t_tValue
		>
	struct
		iterator_traits
		<	Meta::Data::Iterator
			<	t_tValue
			>
		>
	:	iterator_traits
		<	t_tValue*
		>
	{};
}
