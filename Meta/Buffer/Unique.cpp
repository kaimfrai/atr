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
			m_vCapacity
		;

		[[nodiscard]]
		auto constexpr inline
		(	max_size
		)	()	const
		{
			return m_vCapacity;
		}

		[[nodiscard]]
		auto friend constexpr inline
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

		auto friend constexpr inline
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
		auto friend constexpr inline
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
		auto friend constexpr inline
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

		explicit(true) constexpr inline
		(	Unique
		)	(	USize
					i_vCapacity
			)
		:	m_vBuffer
			{	::std::make_unique_for_overwrite<t_tElement[]>
				(	i_vCapacity
				)
			}
		,	m_vCapacity
			{	i_vCapacity
			}
		{}

		explicit(true) constexpr inline
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
					...	t_vpIndex
				>(	std::index_sequence
					<	t_vpIndex
						...
					>
				)
			{
				(	...
				,	(	m_vBuffer[t_vpIndex]
					=	std::forward<decltype(i_rpElement)>(i_rpElement)
					)
				);
			}(	std::make_index_sequence<sizeof...(i_rpElement)>{}
			);
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
	};
}
