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
				t_vWidth
		>
	struct
		Count
	{
		auto static constexpr inline
			AssertSanitized
		=	&
			Arithmetic::AssertSanitizedUnsigned
			<	t_vWidth
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
			m_vValue
		;

		explicit(false) constexpr inline
		(	Count
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Count
		)	(	UIntMax
					i_vValue
			)
			noexcept
		:	m_vValue
			{	AssertSanitized
				(	i_vValue
				)
			}
		{}

		template
			<	auto
					t_vOtherWidth
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	ChangeWidth
		)	(	Count
					i_vCount
			)
			noexcept
		->	Count<t_vOtherWidth>
		{	return
			Count
			<	t_vOtherWidth
			>{	i_vCount
			.	get()
			};
		}

		template
			<	auto
					t_vOtherWidth
			>
		[[nodiscard]]
		explicit(t_vOtherWidth <= t_vWidth) constexpr inline
		(	operator
			Count<t_vOtherWidth>
		)	()	const
			noexcept
		{	return
			ChangeWidth
			<	t_vOtherWidth
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
			(	m_vValue
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
