export module Meta.Bit.ElementReference;

import Meta.Bit.Access;
import Meta.Bit.Index;
import Meta.Bit.Field.Compare;
import Meta.Memory.Size;

import Std;

export namespace
	Meta::Bit
{
	template
		<	typename
				t_tBuffer
		,	BitSize
				t_vSize
		,	ByteIndex
				t_vMaxOffset
		>
	struct
		ElementReference final
	{
		using
			BitAccess
		=	Access
			<	t_vSize
			,	t_vMaxOffset
			>
		;
		using
			FieldType
		=	typename
				BitAccess
			::	FieldType
		;

		using
			MaskType
		=	typename
				BitAccess
			::	BufferFieldType
		;

		t_tBuffer
		*	const
			m_aUnderlyingArray
		;
		MaskType const
			m_vMask
		;

		[[nodiscard]]
		explicit(false) constexpr inline
		(	operator
			FieldType
		)	()	const
			noexcept
		{	return
			BitAccess::ReadField
			(	m_aUnderlyingArray
			,	m_vMask
			);
		}

		auto constexpr inline
		(	operator=
		)	(	FieldType
					i_vValue
			)	&
			noexcept
		->	ElementReference&
			requires
			(	not
				::std::is_const_v<t_tBuffer>
			)
		{
			BitAccess::WriteField
			(	i_vValue
			,	m_aUnderlyingArray
			,	m_vMask
			);
			return *this;
		}

		auto constexpr inline
		(	operator=
		)	(	FieldType
					i_vValue
			)	&&
			noexcept
		->	ElementReference&&
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
		auto friend constexpr inline
		(	operator==
		)	(	ElementReference
					i_vLeft
			,	FieldType
					i_vRight
			)
			noexcept
		->	bool
		{	return
				i_vLeft.operator FieldType()
			==	i_vRight
			;
		}
	};
}
