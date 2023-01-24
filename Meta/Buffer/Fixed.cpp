export module Meta.Buffer.Fixed;

import Meta.Buffer.Iterator;
import Meta.Buffer.Proto;
import Meta.Math.Next;
import Meta.Size;

import Std;

using ::Meta::Math::Next;

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
			pointer
		=	typename
				BufferType
			::	pointer
		;

		using
			const_pointer
		=	typename
				BufferType
			::	const_pointer
		;

		static_assert
		(	std::is_pointer_v
			<	pointer
			>
		);

		using
			value_type
		=	typename
				BufferType
			::	value_type
		;

		using
			iterator
		=	Iterator
			<	value_type
			>
		;

		using
			const_iterator
		=	Iterator
			<	value_type const
			>
		;

		BufferType
			m_vBuffer
		;
		USize
			m_nElementCount
		{};

		explicit(false) constexpr
		(	Fixed
		)	()
		=	default;

		explicit(false) constexpr
		(	Fixed
		)	(	Fixed const
				&
			)
		=	default;

		explicit(false) constexpr
		(	Fixed
		)	(	Fixed
				&&
			)
		=	default;

		explicit(true) constexpr
		(	Fixed
		)	(	BufferType const
				&	i_rBuffer
			)
		:	m_vBuffer
			{	i_rBuffer
			}
		{}

		explicit(true) constexpr
		(	Fixed
		)	(	std::remove_cv_t<BufferType>
				&&	i_rBuffer
			)
		:	m_vBuffer
			{	std::move(i_rBuffer)
			}
		{}

		explicit(true) constexpr
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
		,	m_nElementCount
			{	sizeof...(i_rpElement)
			}
		{}

		[[nodiscard]]
		auto constexpr
		(	max_size
		)	()	const
			noexcept
		->	USize
		{	return m_vBuffer.max_size();	}

		[[nodiscard]]
		auto constexpr
		(	ViewBuffer
		)	()	&
		->	std::span<value_type>
		{	return
			{	begin(*this)
			,	max_size()
			};
		}

		[[nodiscard]]
		auto constexpr
		(	ViewBuffer
		)	()	const&
		->	std::span<value_type const>
		{	return
			{	begin(*this)
			,	max_size()
			};
		}

		[[nodiscard]]
		auto constexpr
		(	size
		)	()	const
			noexcept
		->	USize
		{	return m_nElementCount;	}

		[[nodiscard]]
		auto constexpr
		(	ssize
		)	()	const
			noexcept
		->	SSize
		{	return static_cast<SSize>(m_nElementCount);	}

		auto constexpr
		(	EnsureNewSizeValid
		)	(	USize
					i_nNewSize
			)	const
		{
			if	(i_nNewSize > max_size())
				((void)"To many elements for buffer!", std::unreachable());
		}

		auto constexpr
		(	push_back
		)	(	std::convertible_to<value_type> auto
				&&	i_rValue
			)	&
		->	Fixed&
		{
			EnsureNewSizeValid(Next(size()));

				m_vBuffer[m_nElementCount]
			=	std::forward<decltype(i_rValue)>
				(	i_rValue
				)
			;
			++m_nElementCount;

			return *this;
		}

		auto constexpr
		(	push_back
		)	(	std::convertible_to<value_type> auto
				&&	i_rValue
			)	&&
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

		auto constexpr
		(	reset
		)	(	std::convertible_to<value_type> auto
				&&
				...	i_rpValue
			)	&
		->	Fixed&
		{
			auto constexpr
				vNewElementCount
			=	sizeof...(i_rpValue)
			;
			EnsureNewSizeValid(vNewElementCount);

			clear();

			[&]	<	USize
					...	t_npIndex
				>(	std::index_sequence<t_npIndex...>
				)
			{
				(	...
				,	(	m_vBuffer[t_npIndex]
					=	std::forward<decltype(i_rpValue)>
						(	i_rpValue
						)
					)
				);
			}(	std::make_index_sequence<vNewElementCount>{}
			);
			m_nElementCount = vNewElementCount;

			return *this;
		}

		auto constexpr
		(	pop_back
		)	(	USize
					i_nCount
			)	&
		->	Fixed&
		{	static_assert
			(	std::is_trivially_destructible_v<value_type>
			,	"The following optimization is only valid for trivially destructible elements!"
			);
				m_nElementCount
			-=	std::min(m_nElementCount, i_nCount)
			;
			return *this;
		}

		auto constexpr
		(	pop_back
		)	(	USize
					i_nCount
			)	&&
		->	Fixed
		{	return std::move(pop_back(i_nCount));	}

		auto constexpr
		(	pop_back
		)	()	&
		->	decltype(auto)
		{	return pop_back(1uz);	}

		auto constexpr
		(	pop_back
		)	()	&&
		->	decltype(auto)
		{	return pop_back(1uz);	}

		auto constexpr
		(	erase
		)	(	iterator
					i_aErase
			)	&
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
		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	&
			noexcept
		->	decltype(auto)
		{	return m_vBuffer[i_nIndex];	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	const&
			noexcept
		->	decltype(auto)
		{	return m_vBuffer[i_nIndex];	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	&&
			noexcept
		->	decltype(auto)
		{	return std::move(*this).m_vBuffer[i_nIndex];	}

		[[nodiscard]]
		friend auto constexpr
		(	begin
		)	(	Fixed
				&	i_rFixed
			)
			noexcept
		->	iterator
		{	return
			iterator
			{	std::ranges::begin
				(	i_rFixed
				.	m_vBuffer
				)
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	begin
		)	(	Fixed const
				&	i_rFixed
			)
			noexcept
		->	const_iterator
		{	return
			const_iterator
			{	std::ranges::begin
				(	i_rFixed
				.	m_vBuffer
				)
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	Fixed
				&	i_rFixed
			)
			noexcept
		->	Sentinel<value_type>
		{	return
			Sentinel<value_type>
			(	begin(i_rFixed)
			+	i_rFixed.ssize()
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	Fixed const
				&	i_rFixed
			)
			noexcept
		->	Sentinel<value_type const>
		{	return
			Sentinel<value_type const>
			(	begin(i_rFixed)
			+	i_rFixed.ssize()
			);
		}

		auto constexpr
		(	operator=
		)	(	Fixed const
				&
			)	&
		->	Fixed&
		=	default;

		auto constexpr
		(	operator=
		)	(	Fixed
				&&
			)	&
		->	Fixed&
		=	default;

		[[nodiscard]]
		auto constexpr
		(	find
		)	(	value_type const
				&	i_rValue
			)	const
		{	return
			//	TODO ranges::find does not appear to be usable with modules
			//	find is not usable with a sentinel
			std::find
			(	begin(*this)
			,	end(*this).base()
			,	i_rValue
			);
		}

		[[nodiscard]]
		auto constexpr
		(	contains
		)	(	value_type const
				&	i_rValue
			)	const
		->	bool
		{	return
				find(i_rValue)
			!=	end(*this)
			;
		}

		auto constexpr
		(	clear
		)	()
		{
			pop_back(size());
		}

		[[nodiscard]]
		auto constexpr
		(	empty
		)	()	const
			noexcept
		->	bool
		{	return size() == 0uz;	}

		auto constexpr
		(	AppendUnique
		)	(	std::ranges::range auto
				&&	i_rFrom
			)	&
		{
			auto const
				vOldEnd
			=	end(*this).base()
			;

			auto const
			[	_
			,	vNewEnd
			]=	empty()
			?	std::ranges::copy
				(	std::forward<decltype(i_rFrom)>(i_rFrom)
				,	vOldEnd
				)
			:	std::ranges::copy_if
				(	std::forward<decltype(i_rFrom)>(i_rFrom)
				,	vOldEnd
				,	[	this
					]	(	auto const
							&	i_rValue
						)
					{	return
						not
						contains
						(	i_rValue
						);
					}
				)
			;

				m_nElementCount
			+=	static_cast<USize>
				(	std::distance
					(	vOldEnd
					,	vNewEnd
					)
				)
			;
		}

		auto constexpr
		(	SetUnusedToDefault
		)	()	&
		{
			std::ranges::fill
			(	end(*this).base()
			,	Sentinel<value_type>{end(m_vBuffer)}
			,	value_type{}
			);
		}

		[[nodiscard]]
		auto constexpr
		(	FindIndexOf
		)	(	value_type const
				&	i_rValue
			)	const
		->	USize
		{	return
			static_cast<USize>
			(	std::distance
				(	begin(*this)
				,	find(i_rValue)
				)
			);
		}

		auto constexpr
		(	sort
		)	()	&
		->	Fixed&
		{
			//	TODO ranges::sort does not appear to be usable with modules
			//	sort is not usable with a sentinel
			std::sort(begin(*this), end(*this).base());
			return *this;
		}

		auto constexpr
		(	sort
		)	()	&&
		->	Fixed
		{	return std::move(sort());	}
	};
}
