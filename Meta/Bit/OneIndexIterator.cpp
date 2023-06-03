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
				t_nWidth
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
			<	t_nWidth
			>
		;

		UInt<t_nWidth>
			m_nField
		;

		[[nodiscard]]
		auto constexpr
		(	operator*
		)	()	const
			noexcept
		->	value_type
		{	return
			ChangeWidth<t_nWidth>
			(	IndexLowestOne
				(	m_nField
				)
			);
		}

		auto constexpr
		(	operator++
		)	()	&
			noexcept
		->	OneIndexIterator&
		{	UnsetLowestOne
			(	m_nField
			);
			return
				*this
			;
		}

		[[nodiscard("Use preincrement when discarding the result")]]
		auto constexpr
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
		auto friend constexpr
		(	operator==
		)	(	OneIndexIterator
			,	OneIndexIterator
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		auto friend constexpr
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
