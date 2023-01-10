export module Meta.Bit.Index.Shift;

import Meta.Bit.Index;
import Meta.Bit.Mask;
import Meta.Arithmetic.Sanitize;
import Meta.Arithmetic.Integer;
import Meta.Memory.Size.Arithmetic;

export namespace
	Meta::Bit
{
	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	operator >>
	)	(	UInt<t_nWidth>
				i_nField
		,	Index<t_nWidth>
				i_nIndex
		)
		noexcept
	->	UInt<t_nWidth>
	{	return
		static_cast<UInt<t_nWidth>>
		(	Arithmetic::AssertSanitizedUnsigned
			<	Mask<t_nWidth>
			>(	i_nField
			)
		>>	i_nIndex.get()
		);
	}

	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	operator >>=
	)	(	UInt<t_nWidth>
			&	i_rField
		,	Index<t_nWidth>
				i_nIndex
		)
		noexcept
	->	UInt<t_nWidth>&
	{	return
		(	i_rField
		=	(	Arithmetic::AssertSanitizedUnsigned
				<	Mask<t_nWidth>
				>(	i_rField
				)
			)
		>>	i_nIndex
		);
	}

	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	operator <<
	)	(	UInt<t_nWidth>
				i_nField
		,	Index<t_nWidth>
				i_nIndex
		)
		noexcept
	->	UInt
		<	t_nWidth
		+	Index<t_nWidth>
		::	MaximumShift
		>
	{	return
		static_cast
		<	UInt
			<	t_nWidth
			+	Index<t_nWidth>
			::	MaximumShift
			>
		>(	Arithmetic::AssertSanitizedUnsigned
			<	Mask<t_nWidth>
			>(	i_nField
			)
		<<	i_nIndex.get()
		);
	}

	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	operator <<=
	)	(	UInt<t_nWidth>
			&	i_rField
		,	Index<t_nWidth>
				i_nIndex
		)
		noexcept
	->	UInt<t_nWidth>&
	{	return
		(	i_rField
		=	Arithmetic::SanitizeUnsigned
			<	Mask<t_nWidth>
			>(	Arithmetic::AssertSanitizedUnsigned
				<	Mask<t_nWidth>
				>(	i_rField
				)
			<<	i_nIndex
			.	get()
			)
		);
	}

	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	Power
	)	(	Index<t_nWidth>
				i_nIndex
		)
	->	UInt<t_nWidth>
	{	return
		static_cast<UInt<t_nWidth>>
		(	UInt<t_nWidth>{1u}
		<<	i_nIndex.get()
		);
	}
}
