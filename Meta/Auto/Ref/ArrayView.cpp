export module Meta.Auto.Ref.ArrayView;

import Meta.Size;

export namespace
	Meta
{
	template
		<	typename
				t_tElement
		>
	struct
		ArrayView
	{
		using
			difference_type
		=	SSize
		;

		using
			size_type
		=	USize
		;

		// TODO iterator class with operator* returning &&
		using
			iterator
		=	t_tElement
			*
		;

		t_tElement
		*	m_aData
		=	nullptr
		;

		template
			<	typename
					t_tArray
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	this t_tArray
					i_rArray
			,	SSize
					i_vIndex
			)
			noexcept
			// TODO Optional reference for out of bounds
		->	t_tArray::reference
		{	return
			t_tArray::reference
			(	i_rArray
				.	m_aData
					[	i_vIndex
					]
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	data
		)	(	this ArrayView
					i_rArray
			)
			noexcept
		->	t_tElement*
		{	return
				i_rArray
				.	m_aData
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	size
		)	(	this auto
					i_rArray
			)
			noexcept
		->	size_type
		{	return
			static_cast<size_type>
			(	i_rArray
				.	ssize
					()
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	(	this ArrayView
					i_rArray
			)
			noexcept
		->	iterator
		{	return
			iterator
			{	i_rArray
				.	data
					()
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	(	this auto
					i_rArray
			)
			noexcept
		->	iterator
		{	return
			iterator
			{	i_rArray
				.	begin
					()
			+	i_rArray
				.	ssize
					()
			};
		}
	};
}
