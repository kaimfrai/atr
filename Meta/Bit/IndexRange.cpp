export module Meta.Bit.IndexRange;

import Meta.Arithmetic.Sanitize;
import Meta.Arithmetic.Integer;
import Meta.Memory.Size;
import Meta.Memory.Size.Compare;

export namespace
	Meta::Bit
{
	template
		<	BitSize
				t_nWidth
		>
	struct
		IndexRange
	{
		static auto constexpr
			AssertSanitized
		=	&
			Arithmetic::AssertSanitizedUnsigned
			<	t_nWidth
			.	get()
			>
		;

		using
			CountType
		=	decltype
			(	AssertSanitized
				(	0u
				)
			)
		;

		CountType
			m_nValue
		;

		explicit(false) constexpr
		(	IndexRange
		)	()
			noexcept
		=	default;

		explicit(true) constexpr
		(	IndexRange
		)	(	UIntMax
					i_nValue
			)
			noexcept
		:	m_nValue
			{	AssertSanitized
				(	i_nValue
				)
			}
		{}

		template
			<	auto
					t_nOtherWidth
			>
		[[nodiscard]]
		explicit(t_nOtherWidth <= t_nWidth) constexpr
		(	operator IndexRange<t_nOtherWidth>
		)	()	const
			noexcept
		{	return
			IndexRange
			<	t_nOtherWidth
			>{	get()
			};
		}

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	const
			noexcept
		->	CountType
		{	return
			AssertSanitized
			(	m_nValue
			);
		}
	};
}
