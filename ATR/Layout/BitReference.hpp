export module ATR:Layout.BitReference;

import Meta.Arithmetic;

import Std;

using ::Meta::UInt;
using ::Meta::USize;

export namespace
	ATR
{
	template
		<	USize
				t_nOffset
		,	USize
				t_nSize
		>
	struct
		BitReference final
	{
		using
			FieldType
		=	UInt
			<	t_nSize
			>
		;

		using
			BufferType
		=	UInt
			<	t_nSize
			+	t_nOffset
			>
		;

		::std::byte
		*	m_aUnderlyingArray
		;

		struct
			Layout final
		{
			BufferType : t_nOffset;
			BufferType Field : t_nSize;
			BufferType : (sizeof(BufferType) - t_nOffset - t_nSize);
		};

		static_assert
		(	sizeof(Layout)
		==	sizeof(BufferType)
		);

		static auto constexpr
		(	ReadField
		)	(	::std::byte const
				*	i_aBuffer
			)
		->	FieldType
		{
			return
			static_cast<FieldType>
			(	ReadFromBytes<Layout>
				(	i_aBuffer
				)
			.	Field
			);
		}

		static auto constexpr
		(	WriteField
		)	(	FieldType
					i_vValue
			,	::std::byte
				*	i_aBuffer
			)
		->	void
		{
			auto
				vLayout
			=	ReadFromBytes<Layout>
				(	i_aBuffer
				)
			;
			vLayout.Field = static_cast<BufferType>(i_vValue);
			WriteToBytes(vLayout);
		}

		[[nodiscard]]
		explicit(false) constexpr
		(	operator FieldType
		)	()	const
		{	return
			ReadField
			(	m_aUnderlyingArray
			);
		}

		auto constexpr
		(	operator =
		)	(	FieldType
					i_vValue
			)	&
		->	BitReference
		{
			WriteField(i_vValue, m_aUnderlyingArray);
			return *this;
		}
	};
}
