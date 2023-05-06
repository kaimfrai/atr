export module ATR.Member.AlignBuffer;

import ATR.Member.Constants;
import ATR.Member.CountedBuffer;

import Meta.Memory.Alignment;
import Meta.Size;

import Std;

using ::Meta::Memory::Alignment;
using ::Meta::USize;

export namespace
	ATR::Member
{
	template
		<	typename
				t_tContainer
		>
	[[nodiscard]]
	auto constexpr
	(	AlignedElement
	)	(	t_tContainer
			&&	i_rConainter
		,	Alignment
				i_vAlignment
		)
		noexcept
	->	decltype(auto)
	{	return
		::std::forward<t_tContainer>
		(	i_rConainter
		)	[	static_cast<USize>
				(	MaxAlign
					.	Value
				-	i_vAlignment
					.	Value
				)
			]
		;
	}

	template
		<	typename
				t_tElement
		>
	struct
		AlignBuffer
	{
		auto static constexpr
			BufferSize
		=	static_cast<USize>
			(	MaxAlign
				.	Value
			)
		+	1uz
		;

		using
			value_type
		=	CountedBuffer
			<	t_tElement
			,	ElementsPerAlign
			>
		;

		using
			BufferType
		=	value_type
				[	BufferSize
				]
		;

		auto static constexpr
		(	size
		)	()
			noexcept
		->	USize
		{	return
				BufferSize
			;
		}

		BufferType
			Buffer
		{};

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	Alignment
					i_vAlignment
			)	&
			noexcept
		->	value_type&
		{	return
			AlignedElement
			(	Buffer
			,	i_vAlignment
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	Alignment
					i_vAlignment
			)	const&
			noexcept
		->	value_type const&
		{	return
			AlignedElement
			(	Buffer
			,	i_vAlignment
			);
		}

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	&
			noexcept
		{	return
			::std::begin
			(	Buffer
			);
		}

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	const&
			noexcept
		{	return
			::std::begin
			(	Buffer
			);
		}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	&
			noexcept
		{	return
			::std::end
			(	Buffer
			);
		}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	const&
			noexcept
		{	return
			::std::end
			(	Buffer
			);
		}

		[[nodiscard]]
		auto friend constexpr
		(	operator==
		)	(	AlignBuffer const
				&
			,	AlignBuffer const
				&
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		auto friend constexpr
		(	operator<=>
		)	(	AlignBuffer const
				&	i_rLeft
			,	AlignBuffer const
				&	i_rRight
			)
			noexcept
		->	::std::strong_ordering
		{	return
			::std::lexicographical_compare_three_way
			(	i_rLeft
				.	begin
					()
			,	i_rLeft
				.	end
					()
			,	i_rRight
				.	begin
					()
			,	i_rRight
				.	end
					()
			);
		}
	};
}
