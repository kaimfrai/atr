export module Meta.Logic:BufferedSpan;
// TODO find more appropriate module. as of now, this is only required in Meta.Logic
import Meta.Arithmetic.Size;
export import Meta.Token;
export import Meta.Data;

import Std;

export namespace
	Meta
{
	template
		<	typename
				t_tElement
		,	typename
				t_tDeleter
			=	std::default_delete<t_tElement[]>
		>
	struct
		UniqueBuffer
	{
		using
			value_type
		=	t_tElement
		;

		using
			pointer
		=	value_type*
		;

		using
			const_pointer
		=	value_type const*
		;

		using
			iterator
		=	Data::Iterator
			<	value_type
			>
		;

		using
			const_iterator
		=	Data::Iterator
			<	value_type const
			>
		;

		std::unique_ptr<t_tElement[], t_tDeleter>
			m_vBuffer
		;
		USize
			m_nCapacity
		;

		[[nodiscard]]
		auto constexpr
		(	max_size
		)	()	const
		{
			return m_nCapacity;
		}

		[[nodiscard]]
		friend auto constexpr
		(	begin
		)	(	UniqueBuffer
				&	i_rUniqueBuffer
			)
		->	iterator
		{	return
			{	i_rUniqueBuffer.m_vBuffer.get()
			};
		}

		friend auto constexpr
		(	begin
		)	(	UniqueBuffer const
				&	i_rUniqueBuffer
			)
		->	const_iterator
		{	return
			{	i_rUniqueBuffer.m_vBuffer.get()
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	UniqueBuffer
				&	i_rUniqueBuffer
			)
		->	Data::Sentinel<value_type>
		{	return
				begin(i_rUniqueBuffer)
			+	static_cast<SSize>(i_rUniqueBuffer.max_size())
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	UniqueBuffer const
				&	i_rUniqueBuffer
			)
		->	Data::Sentinel<value_type const>
		{	return
				begin(i_rUniqueBuffer)
			+	static_cast<SSize>(i_rUniqueBuffer.max_size())
			;
		}

		explicit(true) constexpr
		(	UniqueBuffer
		)	(	USize
					i_nCapacity
			)
		:	m_vBuffer
			{	// TODO should be make_unique_for_overwrite as soon as it is available
				std::make_unique<t_tElement[]>
				(	i_nCapacity
				)
			}
		,	m_nCapacity
			{	i_nCapacity
			}
		{}

		explicit(true) constexpr
		(	UniqueBuffer
		)	(	auto
				&&
				...	i_rpElement
			)
			requires
			(	sizeof...(i_rpElement)
			>	0uz
			)
		:	UniqueBuffer
			{	sizeof...(i_rpElement)
			}
		{
			[&]	<	USize
					...	t_npIndex
				>(	IndexToken
					<	t_npIndex
						...
					>
				)
			{
				(	...
				,	(	m_vBuffer[t_npIndex]
					=	std::forward<decltype(i_rpElement)>(i_rpElement)
					)
				);
			}(	Sequence<sizeof...(i_rpElement)>
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	&
		->	decltype(auto)
		{	return m_vBuffer[i_nIndex];	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	const&
		->	decltype(auto)
		{	return m_vBuffer[i_nIndex];	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	&&
		->	decltype(auto)
		{	return std::move(*this).m_vBuffer[i_nIndex];	}
	};

	template
		<	typename
				t_tBuffer
		>
	concept
		ProtoBuffer
	=	std::ranges::contiguous_range
		<	t_tBuffer
		>
	and	requires
			(	t_tBuffer
					c_vBuffer
			)
		{
			typename
				t_tBuffer
			::	value_type
			;

			typename
				t_tBuffer
			::	pointer
			;
			typename
				t_tBuffer
			::	const_pointer
			;

			{	&c_vBuffer[0uz]
			}->	std::same_as
				<	typename
						t_tBuffer
					::	pointer
				>
			;

			{	c_vBuffer.max_size()
			}->	std::same_as
				<	USize
				>
			;
		}
	and	std::default_initializable
		<	typename
				t_tBuffer
			::	value_type
		>
	and	std::is_trivially_destructible_v
		<	typename
				t_tBuffer
			::	value_type
		>
	;

	template
		<	ProtoBuffer
				t_tBuffer
		>
	struct
		//	needs to be usable as template argument, so no private members!
		BufferedSpan
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
		=	Data::Iterator
			<	value_type
			>
		;

		using
			const_iterator
		=	Data::Iterator
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
		(	BufferedSpan
		)	()
		=	default;

		explicit(false) constexpr
		(	BufferedSpan
		)	(	BufferedSpan const
				&
			)
		=	default;

		explicit(false) constexpr
		(	BufferedSpan
		)	(	BufferedSpan
				&&
			)
		=	default;

		explicit(true) constexpr
		(	BufferedSpan
		)	(	BufferType const
				&	i_rBuffer
			)
		:	m_vBuffer
			{	i_rBuffer
			}
		{}

		explicit(true) constexpr
		(	BufferedSpan
		)	(	std::remove_cv_t<BufferType>
				&&	i_rBuffer
			)
		:	m_vBuffer
			{	std::move(i_rBuffer)
			}
		{}

		explicit(true) constexpr
		(	BufferedSpan
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
		->	BufferedSpan&
		{
			EnsureNewSizeValid(size() + 1uz);

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
		->	BufferedSpan
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
		->	BufferedSpan&
		{
			auto constexpr
				vNewElementCount
			=	sizeof...(i_rpValue)
			;
			EnsureNewSizeValid(vNewElementCount);

			clear();

			[&]	<	USize
					...	t_npIndex
				>(	IndexToken<t_npIndex...>
				)
			{
				(	...
				,	(	m_vBuffer[t_npIndex]
					=	std::forward<decltype(i_rpValue)>
						(	i_rpValue
						)
					)
				);
			}(	Sequence<vNewElementCount>
			);
			m_nElementCount = vNewElementCount;

			return *this;
		}

		auto constexpr
		(	pop_back
		)	(	USize
					i_nCount
			)	&
		->	BufferedSpan&
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
		->	BufferedSpan
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
		)	(	BufferedSpan
				&	i_rBufferedSpan
			)
			noexcept
		->	iterator
		{	return
			iterator
			(	std::ranges::begin
				(	i_rBufferedSpan
				.	m_vBuffer
				)
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	begin
		)	(	BufferedSpan const
				&	i_rBufferedSpan
			)
			noexcept
		->	const_iterator
		{	return
			const_iterator
			(	std::ranges::begin
				(	i_rBufferedSpan
				.	m_vBuffer
				)
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	BufferedSpan
				&	i_rBufferedSpan
			)
			noexcept
		->	Data::Sentinel<value_type>
		{	return
			Data::Sentinel<value_type>
			(	begin(i_rBufferedSpan)
			+	i_rBufferedSpan.ssize()
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	BufferedSpan const
				&	i_rBufferedSpan
			)
			noexcept
		->	Data::Sentinel<value_type const>
		{	return
			Data::Sentinel<value_type const>
			(	begin(i_rBufferedSpan)
			+	i_rBufferedSpan.ssize()
			);
		}

		auto constexpr
		(	operator=
		)	(	BufferedSpan const
				&
			)	&
		->	BufferedSpan&
		=	default;

		auto constexpr
		(	operator=
		)	(	BufferedSpan
				&&
			)	&
		->	BufferedSpan&
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
			,	Data::Sentinel<value_type>(end(m_vBuffer))
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
		->	BufferedSpan&
		{
			//	TODO ranges::sort does not appear to be usable with modules
			//	sort is not usable with a sentinel
			std::sort(begin(*this), end(*this).base());
			return *this;
		}

		auto constexpr
		(	sort
		)	()	&&
		->	BufferedSpan
		{	return std::move(sort());	}
	};

	template
		<	typename
				t_tElement
		>
	using
		DynamicBufferedSpan
	=	BufferedSpan
		<	UniqueBuffer
			<	t_tElement
			>
		>
	;

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		>
	using
		StaticBufferedSpan
	=	BufferedSpan
		<	std::array
			<	t_tElement
			,	t_nExtent
			>
		>
	;
}
