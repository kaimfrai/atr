export module ATR.Member.CountedBuffer;

import Meta.Size;

import Std;

using ::Meta::SSize;
using ::Meta::USize;

export namespace
	ATR::Member
{
	template
		<	typename
				t_tElement
		,	SSize
				t_vMaxCount
		>
	struct
		CountedBuffer
	{
		using
			value_type
		=	t_tElement
		;

		using
			BufferType
		=	value_type
				[	t_vMaxCount
				]
		;

		using
			iterator
		=	value_type
			*
		;

		using
			const_iterator
		=	value_type const
			*
		;

		BufferType
			Buffer
		{};

		SSize
			Count
		{};

		[[nodiscard]]
		auto constexpr inline
		(	empty
		)	()	const
			noexcept
		->	bool
		{	return
				Count
			<=	0z
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	size
		)	()	const
			noexcept
		->	USize
		{	return
			static_cast<USize>
			(	Count
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	capacity
		)	()
			noexcept
		->	USize
		{	return
			static_cast<SSize>
			(	t_vMaxCount
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	SSize
					i_vIndex
			)	&
			noexcept
		->	value_type&
		{	return
			Buffer
				[	i_vIndex
				]
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	SSize
					i_vIndex
			)	const&
			noexcept
		->	value_type const&
		{	return
			Buffer
				[	i_vIndex
				]
			;
		}

		auto constexpr inline
		(	push_back
		)	(	t_tElement const
				&	i_rElement
			)	&
			noexcept
		->	t_tElement&
		{	return
				Buffer
					[	Count
						++
					]
				=	i_rElement
			;
		}

		auto constexpr inline
		(	push_back
		)	(	t_tElement
				&&	i_rElement
			)	&
			noexcept
		->	t_tElement&
		{	return
				Buffer
					[	Count
						++
					]
				=	static_cast<t_tElement&&>
					(	i_rElement
					)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	&
			noexcept
		->	iterator
		{	return
				+
				Buffer
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const&
			noexcept
		->	const_iterator
		{	return
				+
				Buffer
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	&
			noexcept
		->	iterator
		{	return
				Buffer
			+	Count
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	const&
			noexcept
		->	const_iterator
		{	return
				Buffer
			+	Count
			;
		}
	};
}
