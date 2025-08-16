export module Meta.Buffer.Fixed;

import Meta.Buffer.Proto;
import Meta.IndexPack;
import Meta.Math.Next;
import Meta.Size;

import std;

using ::Meta::Math::Next;
using ::Meta::IndexPack;

export namespace
	Meta::Buffer
{
	template
		<	Proto
				t_tBuffer
		>
	struct
		//	needs to be usable as template argument, so no private members!
		Fixed
	{
		using
			BufferType
		=	t_tBuffer
		;

		using
			value_type
		=	decltype
			(	auto
				(	::std::declval<t_tBuffer>()
					[	0
					]
				)
			)
		;

		using
			pointer
		=	value_type
			*
		;

		using
			const_pointer
		=	value_type const
			*
		;

		using
			iterator
		=	pointer
		;

		using
			const_iterator
		=	const_pointer
		;

		BufferType
			m_vBuffer
		;
		USize
			m_vElementCount
		{};

		explicit(false) constexpr inline
		(	Fixed
		)	()
		=	default;

		explicit(false) constexpr inline
		(	Fixed
		)	(	Fixed const
				&
			)
		=	default;

		explicit(false) constexpr inline
		(	Fixed
		)	(	Fixed
				&&
			)
		=	default;

		explicit(true) constexpr inline
		(	Fixed
		)	(	BufferType const
				&	i_rBuffer
			)
		:	m_vBuffer
			{	i_rBuffer
			}
		{}

		explicit(true) constexpr inline
		(	Fixed
		)	(	std::remove_cv_t<BufferType>
				&&	i_rBuffer
			)
		:	m_vBuffer
			{	std::move(i_rBuffer)
			}
		{}

		explicit(true) constexpr inline
		(	Fixed
		)	(	auto
				&&
				...	i_rpElement
			)
			requires
			(	sizeof...(i_rpElement)
			>	0uz
			)
		:	m_vBuffer
			{	std::forward<decltype(i_rpElement)>
				(	i_rpElement
				)
				...
			}
		,	m_vElementCount
			{	sizeof...(i_rpElement)
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	max_size
		)	()	const
			noexcept
		->	USize
		{	return m_vBuffer.max_size();	}

		[[nodiscard]]
		auto constexpr inline
		(	ViewBuffer
		)	()	&
		->	std::span<value_type>
		{	return
			{	begin(*this)
			,	max_size()
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	ViewBuffer
		)	()	const&
		->	std::span<value_type const>
		{	return
			{	begin(*this)
			,	max_size()
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	size
		)	()	const
			noexcept
		->	USize
		{	return m_vElementCount;	}

		[[nodiscard]]
		auto constexpr inline
		(	ssize
		)	()	const
			noexcept
		->	SSize
		{	return static_cast<SSize>(m_vElementCount);	}

		auto constexpr inline
		(	EnsureNewSizeValid
		)	(	USize
					i_vNewSize
			)	const
			noexcept
		{
			if	(i_vNewSize > max_size())
				((void)"To many elements for buffer!", std::unreachable());
		}

		auto constexpr inline
		(	push_back
		)	(	std::convertible_to<value_type> auto
				&&	i_rValue
			)	&
			noexcept
		->	Fixed&
		{
			EnsureNewSizeValid(Next(size()));

				m_vBuffer[m_vElementCount]
			=	std::forward<decltype(i_rValue)>
				(	i_rValue
				)
			;
			++m_vElementCount;

			return *this;
		}

		auto constexpr inline
		(	push_back
		)	(	std::convertible_to<value_type> auto
				&&	i_rValue
			)	&&
			noexcept
		->	Fixed
		{	return
			std::move
			(	push_back
				(	std::forward<decltype(i_rValue)>
					(	i_rValue
					)
				)
			);
		}

		auto constexpr inline
		(	reset
		)	(	std::convertible_to<value_type> auto
				&&
				...	i_rpValue
			)	&
			noexcept
		->	Fixed&
		{
			auto static constexpr
				vNewElementCount
			=	sizeof...(i_rpValue)
			;
			EnsureNewSizeValid(vNewElementCount);

			clear();

			auto const
			&	[	...
					vpIndex
				]
			=	IndexPack
				<	vNewElementCount
				>
			;
			(	...
			,	(	m_vBuffer[vpIndex]
				=	::std::forward<decltype(i_rpValue)>
					(	i_rpValue
					)
				)
			);
			m_vElementCount = vNewElementCount;

			return *this;
		}

		auto constexpr inline
		(	pop_back
		)	(	USize
					i_vCount
			)	&
			noexcept
		->	Fixed&
		{	static_assert
			(	std::is_trivially_destructible_v<value_type>
			,	"The following optimization is only valid for trivially destructible elements!"
			);
				m_vElementCount
			-=	std::min(m_vElementCount, i_vCount)
			;
			return *this;
		}

		auto constexpr inline
		(	pop_back
		)	(	USize
					i_vCount
			)	&&
			noexcept
		->	Fixed
		{	return std::move(pop_back(i_vCount));	}

		auto constexpr inline
		(	pop_back
		)	()	&
			noexcept
		->	decltype(auto)
		{	return pop_back(1uz);	}

		auto constexpr inline
		(	pop_back
		)	()	&&
			noexcept
		->	decltype(auto)
		{	return pop_back(1uz);	}

		auto constexpr inline
		(	insert
		)	(	iterator
					i_aPosition
			,	::std::convertible_to<value_type> auto
				&&	i_rValue
			)	&
			noexcept
		->	iterator
		{
			EnsureNewSizeValid(Next(size()));

			::std::move_backward
			(	i_aPosition
			,	end(*this).base()
			,	::std::next
				(	end(*this).base()
				)
			);

			*i_aPosition = ::std::forward<decltype(i_rValue)>(i_rValue);
			++m_vElementCount;

			return i_aPosition;
		}

		auto constexpr inline
		(	erase
		)	(	iterator
					i_aErase
			)	&
			noexcept
		->	iterator
		{
			auto const
				vEnd
			=	begin(*this)
			+	ssize()
			;
			if	(	i_aErase < begin(*this)
				or	i_aErase >= vEnd
				)
				return vEnd;

			auto
				aNext
			=	::std::next
				(	i_aErase
				)
			;
			::std::move
			(	aNext
			,	vEnd
			,	i_aErase
			);
			pop_back();

			return aNext;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	USize
					i_vIndex
			)	&
			noexcept
		->	decltype(auto)
		{	return m_vBuffer[i_vIndex];	}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	USize
					i_vIndex
			)	const&
			noexcept
		->	decltype(auto)
		{	return m_vBuffer[i_vIndex];	}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	USize
					i_vIndex
			)	&&
			noexcept
		->	decltype(auto)
		{	return std::move(*this).m_vBuffer[i_vIndex];	}

		[[nodiscard]]
		auto friend constexpr inline
		(	begin
		)	(	Fixed
				&	i_rFixed
			)
			noexcept
		->	iterator
		{	using ::std::begin;
			return
			begin
			(	i_rFixed
				.	m_vBuffer
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	begin
		)	(	Fixed const
				&	i_rFixed
			)
			noexcept
		->	const_iterator
		{	using ::std::begin;
			return
			begin
			(	i_rFixed
				.	m_vBuffer
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	end
		)	(	Fixed
				&	i_rFixed
			)
			noexcept
		->	iterator
		{	return
			::std::next
			(	begin
				(	i_rFixed
				)
			,	i_rFixed
				.	ssize
					()
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	end
		)	(	Fixed const
				&	i_rFixed
			)
			noexcept
		->	const_iterator
		{	return
			::std::next
			(	begin
				(	i_rFixed
				)
			,	i_rFixed
				.	ssize
					()
			);
		}

		auto constexpr inline
		(	operator=
		)	(	Fixed const
				&
			)	&
			noexcept
		->	Fixed&
		=	default;

		auto constexpr inline
		(	operator=
		)	(	Fixed
				&&
			)	&
			noexcept
		->	Fixed&
		=	default;

		[[nodiscard]]
		auto constexpr inline
		(	find
		)	(	value_type const
				&	i_rValue
			)	const
			noexcept
		{	return
			::std::find
			(	begin(*this)
			,	end(*this)
			,	i_rValue
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	contains
		)	(	value_type const
				&	i_rValue
			)	const
			noexcept
		->	bool
		{	return
				find(i_rValue)
			!=	end(*this)
			;
		}

		auto constexpr inline
		(	clear
		)	()
			noexcept
		{
			pop_back(size());
		}

		[[nodiscard]]
		auto constexpr inline
		(	empty
		)	()	const
			noexcept
		->	bool
		{	return size() == 0uz;	}

		auto constexpr inline
		(	SetUnusedToDefault
		)	()	&
			noexcept
		{
			using ::std::end;

			::std::fill
			(	end
				(	*this
				)
			,	end
				(	m_vBuffer
				)
			,	value_type
				{}
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	FindIndexOf
		)	(	value_type const
				&	i_rValue
			)	const
			noexcept
		->	USize
		{	return
			static_cast<USize>
			(	std::distance
				(	begin(*this)
				,	find(i_rValue)
				)
			);
		}

		auto constexpr inline
		(	sort
		)	()	&
			noexcept
		->	Fixed&
		{
			::std::sort
			(	begin(*this)
			,	end(*this)
			);
			return
			(	*this
			);
		}

		auto constexpr inline
		(	sort
		)	()	&&
			noexcept
		->	Fixed
		{	return std::move(sort());	}
	};
}
