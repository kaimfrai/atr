export module Meta.Logic:BufferedSpan;
// TODO find more appropriate module. as of now, this is only required in Meta.Logic
export import Meta.Arithmetic;

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
			iterator
		=	pointer
		;

		std::unique_ptr<t_tElement, t_tDeleter>
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
		->	pointer
		{	return i_rUniqueBuffer.m_vBuffer.get();	}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	UniqueBuffer
				&	i_rUniqueBuffer
			)
		->	pointer
		{	return
				begin(i_rUniqueBuffer)
			+	i_rUniqueBuffer.max_size()
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
			::	iterator
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
	and	std::is_trivial_v
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

		static_assert
		(	std::is_pointer_v
			<	pointer
			>
		);

		using
			iterator
		=	typename
				BufferType
			::	iterator
		;

		using
			value_type
		=	typename
				BufferType
			::	value_type
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

		[[nodiscard]]
		auto constexpr
		(	max_size
		)	()	const
		->	USize
		{	return m_vBuffer.max_size();	}

		[[nodiscard]]
		auto constexpr
		(	size
		)	()	const
		->	USize
		{	return m_nElementCount;	}

		auto constexpr
		(	push_back
		)	(	std::convertible_to<value_type> auto
				&&	i_rValue
			)
		{
			if	(m_nElementCount < max_size())
			{
					m_vBuffer[m_nElementCount]
				=	std::forward<decltype(i_rValue)>
					(	i_rValue
					)
				;
				++m_nElementCount;
			}
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

		[[nodiscard]]
		friend auto constexpr
		(	begin
		)	(	BufferedSpan
				&	i_rBufferedSpan
			)
		{	return
			std::ranges::begin
			(	i_rBufferedSpan
			.	m_vBuffer
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	begin
		)	(	BufferedSpan const
				&	i_rBufferedSpan
			)
		{	return
			std::ranges::begin
			(	i_rBufferedSpan
			.	m_vBuffer
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	BufferedSpan
				&	i_rBufferedSpan
			)
		{	auto
				vEnd
			=	begin
				(	i_rBufferedSpan
				)
			;
			std::ranges::advance
			(	vEnd
			,	static_cast<SSize>
				(	i_rBufferedSpan.size()
				)
			);
			return
				vEnd
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	BufferedSpan const
				&	i_rBufferedSpan
			)
		{	auto
				vEnd
			=	begin
				(	i_rBufferedSpan
				)
			;
			std::ranges::advance
			(	vEnd
			,	static_cast<SSize>
				(	i_rBufferedSpan.size()
				)
			);
			return
				vEnd
			;
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
			std::find
			(	begin(*this)
			,	end(*this)
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
		{	m_nElementCount = 0uz;	}

		[[nodiscard]]
		auto constexpr
		(	empty
		)	()	const
		->	bool
		{	return m_nElementCount == 0uz;	}

		auto constexpr
		(	AppendUnique
		)	(	std::ranges::range auto
				&&	i_rFrom
			)	&
		{
			auto const
				vOldEnd
			=	end(*this)
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
			(	end(*this)
			,	end(m_vBuffer)
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
