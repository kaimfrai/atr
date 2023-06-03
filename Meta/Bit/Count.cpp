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
		auto static constexpr inline
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

		explicit(false) constexpr inline
		(	Count
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
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
		auto friend constexpr inline
		(	ChangeWidth
		)	(	Count
					i_nCount
			)
			noexcept
		->	Count<t_nOtherWidth>
		{	return
			Count
			<	t_nOtherWidth
			>{	i_nCount
			.	get()
			};
		}

		template
			<	auto
					t_nOtherWidth
			>
		[[nodiscard]]
		explicit(t_nOtherWidth <= t_nWidth) constexpr inline
		(	operator
			Count<t_nOtherWidth>
		)	()	const
			noexcept
		{	return
			ChangeWidth
			<	t_nOtherWidth
			>(	*this
			);
		}

		[[nodiscard]]
		auto constexpr inline
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

	template
		<	typename
				t_tObject
		>
	using
		Count_For
	=	Count
		<	Memory::SizeOf
			<	t_tObject
			>
		>
	;
}
