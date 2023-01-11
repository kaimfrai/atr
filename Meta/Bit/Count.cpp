export module Meta.Bit.Count;

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
		Count
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
		(	Count
		)	()
			noexcept
		=	default;

		explicit(true) constexpr
		(	Count
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
		(	operator Count<t_nOtherWidth>
		)	()	const
			noexcept
		{	return
			Count
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
