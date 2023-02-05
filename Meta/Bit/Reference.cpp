export module Meta.Bit.Reference;

import Meta.Bit.Access;
import Meta.Bit.Index;
import Meta.Memory.Size;

import Std;

export namespace
	Meta::Bit
{
	template
		<	typename
				t_tBuffer
		,	BitSize
				t_nSize
		,	Index<1_byte>
				t_nOffset
		>
	struct
		SingleReference final
	{
		using
			BitAccess
		=	Access
			<	t_nSize
			,	t_nOffset
			>
		;
		using
			value_type
		=	typename
				BitAccess
			::	FieldType
		;

		[[nodiscard]]
		static auto constexpr
		(	Read
		)	(	t_tBuffer const
				*	i_aUnderlyingArray
			)
			noexcept
		->	value_type
		{	return
			BitAccess::ReadField
			(	i_aUnderlyingArray
			,	t_nOffset
			);
		}

		static auto constexpr
		(	Write
		)	(	value_type
					i_nValue
			,	t_tBuffer
				*	i_aUnderlyingArray
			)
			noexcept
		->	void
		requires
			(	not
				::std::is_const_v<t_tBuffer>
			)
		{	return
			BitAccess::WriteField
			(	i_nValue
			,	i_aUnderlyingArray
			,	t_nOffset
			);
		}

		t_tBuffer
		*	const
			m_aUnderlyingArray
		;

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	const
			noexcept
		->	value_type
		{	return
			Read
			(	m_aUnderlyingArray
			);
		}

		[[nodiscard]]
		explicit(false) constexpr
		(	operator value_type
		)	()	const
			noexcept
		{	return
				get()
			;
		}

		auto constexpr
		(	operator =
		)	(	value_type
					i_vValue
			)	&
			noexcept
		->	SingleReference&
		requires
			(	not
				::std::is_const_v<t_tBuffer>
			)
		{
			Write
			(	i_vValue
			,	m_aUnderlyingArray
			);
			return *this;
		}

		auto constexpr
		(	operator =
		)	(	value_type
					i_vValue
			)	&&
			noexcept
		->	SingleReference&&
		requires
			(	not
				::std::is_const_v<t_tBuffer>
			)
		{	return
			::std::move
			(	*this
			=	i_vValue
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	SingleReference
					i_rReference
			,	value_type
					i_vValue
			)
			noexcept
		->	bool
		{	return
				i_rReference.get()
			==	i_vValue
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator <=>
		)	(	SingleReference
					i_rReference
			,	value_type
					i_vValue
			)
			noexcept
		->	bool
		{	return
				i_rReference.get()
			<=>	i_vValue
			;
		}
	};

	template
		<	BitSize
				t_nSize
		,	Index<1_byte>
				t_nOffset
		>
	using
		Reference
	=	SingleReference
		<	::std::byte
		,	t_nSize
		,	t_nOffset
		>
	;
}
