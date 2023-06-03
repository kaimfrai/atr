export module Meta.Buffer.Unique;

import Meta.Size;

import Std;

export namespace
	Meta::Buffer
{
	template
		<	typename
				t_tElement
		,	typename
				t_tDeleter
			=	std::default_delete<t_tElement[]>
		>
	struct
		Unique
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
		=	pointer
		;

		using
			const_iterator
		=	const_pointer
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
		auto friend constexpr
		(	begin
		)	(	Unique
				&	i_rUnique
			)
		->	iterator
		{	return
			i_rUnique
			.	m_vBuffer
			.	get
				()
			;
		}

		auto friend constexpr
		(	begin
		)	(	Unique const
				&	i_rUnique
			)
		->	const_iterator
		{	return
			i_rUnique
			.	m_vBuffer
			.	get
				()
			;
		}

		[[nodiscard]]
		auto friend constexpr
		(	end
		)	(	Unique
				&	i_rUnique
			)
		->	iterator
		{	return
			::std::next
			(	begin(i_rUnique)
			,	static_cast<SSize>
				(	i_rUnique
					.	max_size
						()
				)
			);
		}

		[[nodiscard]]
		auto friend constexpr
		(	end
		)	(	Unique const
				&	i_rUnique
			)
		->	const_iterator
		{	return
			::std::next
			(	begin
				(	i_rUnique
				)
			,	static_cast<SSize>
				(	i_rUnique
					.	max_size
						()
				)
			);
		}

		explicit(true) constexpr
		(	Unique
		)	(	USize
					i_nCapacity
			)
		:	m_vBuffer
			{	::std::make_unique_for_overwrite<t_tElement[]>
				(	i_nCapacity
				)
			}
		,	m_nCapacity
			{	i_nCapacity
			}
		{}

		explicit(true) constexpr
		(	Unique
		)	(	auto
				&&
				...	i_rpElement
			)
			requires
			(	sizeof...(i_rpElement)
			>	0uz
			)
		:	Unique
			{	sizeof...(i_rpElement)
			}
		{
			[&]	<	USize
					...	t_npIndex
				>(	std::index_sequence
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
			}(	std::make_index_sequence<sizeof...(i_rpElement)>{}
			);
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
	};
}
