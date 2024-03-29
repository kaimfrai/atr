export module Meta.Buffer.Iterator;

import Meta.Size;
import Std;

export namespace
	Meta::Buffer
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
		auto constexpr inline
		(	base
		)	()	const
			noexcept
		->	Iterator<t_tValue>
		{	return
			{	m_aData
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
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
		explicit(false) constexpr inline
		(	operator
			decltype(auto)
		)	()	const
			noexcept
		{	return
			Iterator<t_tValue const>
			{	m_aData
			};
		}

		[[nodiscard]]
		explicit(false) constexpr inline
		(	operator
			Sentinel<t_tValue>
		)	()	const
			noexcept
		{	return
			Sentinel<t_tValue>
			{	m_aData
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	()	const
			noexcept
		->	t_tValue&
		{	return *m_aData;	}

		[[nodiscard]]
		auto constexpr inline
		(	operator->
		)	()	const
			noexcept
		->	t_tValue*
		{	return m_aData;	}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	SSize
					i_vIndex
			)	const
			noexcept
		->	t_tValue&
		{	return *std::next(m_aData, i_vIndex);	}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	USize
					i_vIndex
			)	const
			noexcept
		->	t_tValue&
		{	return operator[](static_cast<SSize>(i_vIndex));	}

		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	Iterator&
		{	return *this += 1z;	}

		auto constexpr inline
		(	operator++
		)	(int)	&
			noexcept
		->	Iterator
		{	return
			std::exchange
			(	*this
			,	std::next(*this)
			);
		}

		auto constexpr inline
		(	operator--
		)	()	&
			noexcept
		->	Iterator&
		{	return *this -= 1z;		}

		auto constexpr inline
		(	operator--
		)	(int)	&
			noexcept
		->	Iterator
		{	return
			std::exchange
			(	*this
			,	std::prev(*this)
			);
		}

		auto friend constexpr inline
		(	operator-
		)	(	Iterator
					i_vLeft
			,	Iterator
					i_vRight
			)
			noexcept
		->	SSize
		{	return std::distance(i_vRight.m_aData, i_vLeft.m_aData);	}

		auto constexpr inline
		(	operator+=
		)	(	SSize
					i_vOffset
			)	&
			noexcept
		->	Iterator&
		{	m_aData = std::next(m_aData, i_vOffset);
			return *this;
		}

		auto constexpr inline
		(	operator-=
		)	(	SSize
					i_vOffset
			)	&
			noexcept
		->	Iterator&
		{	m_aData = std::prev(m_aData, i_vOffset);
			return *this;
		}

		auto friend constexpr inline
		(	operator+
		)	(	Iterator
					i_vIterator
			,	SSize
					i_vOffset
			)
			noexcept
		->	Iterator
		{	return i_vIterator += i_vOffset;	}

		auto friend constexpr inline
		(	operator-
		)	(	Iterator
					i_vIterator
			,	SSize
					i_vOffset
			)
			noexcept
		->	Iterator
		{	return i_vIterator -= i_vOffset;	}

		auto friend constexpr inline
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
		auto friend constexpr inline
		(	operator==
		)	(	Iterator
			,	Iterator
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		auto friend constexpr inline
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
		<	::Meta::Buffer::Iterator
			<	t_tValue
			>
		>
	:	iterator_traits
		<	t_tValue*
		>
	{};
}
