export module Evaluation.Dependency.DynamicArray;

import std;

export
{
	template
		<	typename
				t_tElement
		>
	class
		DynamicArray
	{
		::std::byte
		*	m_vBuffer
		=	nullptr
		;
		::std::size_t
			m_vCount
		=	0uz
		;
	public:
		explicit(false) constexpr inline
		(	DynamicArray
		)	(	::std::size_t
					i_vCapacity
			)
			noexcept
		:	m_vBuffer
			{	new	(	::std::nothrow
					)
				::std::byte
					[	i_vCapacity
					*	sizeof(t_tElement)
					]
			}
		{}

		explicit(false) constexpr inline
		(	DynamicArray
		)	(	DynamicArray const
				&
			)
			noexcept
		=	delete;

		auto constexpr inline
		(	operator=
		)	(	DynamicArray const
				&
			)	&
			noexcept
		->	DynamicArray&
		=	delete;

		constexpr inline
		(	compl
			DynamicArray
		)	()
			noexcept
		{
			if	constexpr
				(	not
					::std::is_trivially_destructible_v
					<	t_tElement
					>
				)
			{
				for	(	auto
						&	rElement
					:	*this
					)
				{
					rElement
					.	compl
						t_tElement
						()
					;
				}
			}

			delete[]
				m_vBuffer
			;
		}

		auto constexpr inline
		(	emplace_back
		)	(	auto
				&&
				...	i_rpArgument
			)	&
			noexcept
		->	t_tElement
			&
		{
			auto
			*	aElement
			=	::std::construct_at
				(	::std::bit_cast
					<	t_tElement
						*
					>(	m_vBuffer
					+	(	m_vCount
						*	sizeof(t_tElement)
						)
					)
				,	::std::forward<decltype(i_rpArgument)>
					(	i_rpArgument
					)
					...
				)
			;
			++	m_vCount
			;
			return
			*	aElement
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	&
			noexcept
		->	t_tElement*
		{	return
			::std::launder
			(	::std::bit_cast
				<	t_tElement
					*
				>(	m_vBuffer
				)
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	&
			noexcept
		->	t_tElement*
		{	return
				::std::bit_cast
				<	t_tElement
					*
				>(	m_vBuffer
				+	(	m_vCount
					*	sizeof(t_tElement)
					)
				)
			;
		}
	};
}
