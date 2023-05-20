export module ATR.Member.AlignBuffer;

import ATR.Member.Constants;
import ATR.Member.CountedBuffer;

import Meta.Memory.Alignment;
import Meta.Size;

import Std;

using ::Meta::Memory::Alignment;
using ::Meta::SSize;
using ::Meta::USize;

export namespace
	ATR::Member
{
	[[nodiscard]]
	auto constexpr
	(	AlignedElement
	)	(	auto
			&&	i_rContainer
		,	Alignment
				i_vAlignment
		)
		noexcept
	->	decltype(auto)
	{	return
		::std::forward<decltype(i_rContainer)>
		(	i_rContainer
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
		(	Count
		)	(	Alignment
					i_vAlignment
			)	const
			noexcept
		->	USize
		{	return
			AlignedElement
				(	Buffer
				,	i_vAlignment
				)
			.	size
				()
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	Alignment
					i_vAlignment
			)	&
			noexcept
		->	decltype(auto)
		{	return
			AlignedElement
				(	Buffer
				,	i_vAlignment
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	Alignment
					i_vAlignment
			)	const&
			noexcept
		->	decltype(auto)
		{	return
			AlignedElement
				(	Buffer
				,	i_vAlignment
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	Alignment
					i_vAlignment
			,	USize
					i_vIndex
			)	const&
			noexcept
		->	decltype(auto)
		{	return
			AlignedElement
				(	Buffer
				,	i_vAlignment
				)[	static_cast<SSize>
					(	i_vIndex
					)
				]
			;
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
	};
}
