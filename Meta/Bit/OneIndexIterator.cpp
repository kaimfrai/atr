export module Meta.Bit.OneIndexIterator;

import Meta.Bit.Index;
import Meta.Bit.LowestOne;
import Meta.Arithmetic.Integer;
import Meta.Memory.Size;

import Std;

export namespace
	Meta::Bit
{
	struct
		OneIndexSentinel
	{};

	template
		<	BitSize
				t_vWidth
		>
	struct
		OneIndexIterator
	{
		using
			difference_type
		= 	int
		;
		using
			value_type
		=	Index
			<	t_vWidth
			>
		;

		UInt<t_vWidth>
			m_vField
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	()	const
			noexcept
		->	value_type
		{	return
			ChangeWidth<t_vWidth>
			(	IndexLowestOne
				(	m_vField
				)
			);
		}

		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	OneIndexIterator&
		{	UnsetLowestOne
			(	m_vField
			);
			return
				*this
			;
		}

		[[nodiscard("Use preincrement when discarding the result")]]
		auto constexpr inline
		(	operator++
		)	(int)	&
			noexcept
		->	OneIndexIterator
		{	return
			::std::exchange
			(	*this
			,	::std::next
				(	*this
				)
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	OneIndexIterator
			,	OneIndexIterator
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	OneIndexIterator
					i_vIterator
			,	OneIndexSentinel
			)
			noexcept
		->	bool
		{	return
				i_vIterator
			==	OneIndexIterator{}
			;
		}
	};

	template
		<	typename
				t_tField
		>
	(	OneIndexIterator
	)	(	t_tField
		)
	->	OneIndexIterator
		<	Memory::SizeOf
			<	t_tField
			>
		>
	;
}
