export module ATR:Layout.BitField;

import :ID;
import :Layout.Member;

import Meta.Arithmetic;

import Std;

using ::ATR::ProtoID;

using ::Meta::Arithmetic::ReadFromBytes;
using ::Meta::Arithmetic::WriteToBytes;
using ::Meta::BitsPerByte;
using ::Meta::IndexToken;
using ::Meta::Sequence;
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
	class
		BitFieldReference
	{
	public:
		using
			FieldType
		=	UInt
			<	t_nSize
			>
		;

	private:
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
			BufferType Offset : t_nOffset;
			FieldType Field : t_nSize;
			BufferType Padding : (sizeof(BufferType) - t_nOffset - t_nSize);
		};

		static_assert
		(	sizeof(Layout)
		==	sizeof(BufferType)
		);

		template
			<	USize
			,	typename
			,	char const&
			>
		friend struct
			BitView
		;

		static auto constexpr
		(	ReadField
		)	(	::std::byte const
				*	i_aBuffer
			)
		->	FieldType
		{
			return
				ReadFromBytes<Layout>
				(	i_aBuffer
				)
			.	Field
			;
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
			vLayout.Field = i_vValue;
			WriteToBytes(vLayout);
		}

	public:
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
		->	BitFieldReference
		{
			WriteField(i_vValue, m_aUnderlyingArray);
			return *this;
		}
	};

	template
		<	USize
				t_nOffset
		,	USize
				t_nSize
		,	char const
			&
			...	t_rpName
		>
	struct
		BitViewBase
	{
		static auto constexpr
			BitSize
		=	t_nSize
		;
		using
			reference
		=	BitFieldReference
			<	t_nOffset
			,	BitSize
			>
		;

		static auto constexpr
		(	View
		)	(	::ATR::ID<t_rpName...>
			,	::std::byte
				*	i_aBuffer
			)
			noexcept
		->	reference
		{	return
			{	i_aBuffer
			};
		}

		static auto constexpr
		(	MoveView
		)	(	::ATR::ID<t_rpName...>
			,	::std::byte const
				*	i_aBuffer
			)
			noexcept
		->	typename reference::FieldType
		{	return
				reference
			::	ReadField(i_aBuffer)
			;
		}
	};

	template
		<	USize
				t_nOffset
		,	typename
				t_tEntity
		,	char const
			&
			...	t_rpName
		>
	struct
		BitView
	:	BitViewBase
		<	t_nOffset
		,	::Meta::BitSize
			(	::Meta::Type<t_tEntity>
			)
		,	t_rpName
			...
		>
	{
		static auto constexpr
		(	ConstView
		)	(	::ATR::ID<t_rpName...>
					i_vName
			,	::std::byte const
				*	i_aBuffer
			)
			noexcept
		->	decltype(auto)
		{	return
			MoveView
			(	i_vName
			,	i_aBuffer
			);
		}
	};

	template
		<	USize
				t_nOffset
		,	typename
				t_tEntity
		,	char const
			&
			...	t_rpName
		>
	struct
		BitView
		<	t_nOffset
		,	::Meta::Specifier::Mutable<t_tEntity>
		,	t_rpName
			...
		>
	:	BitViewBase
		<	t_nOffset
		,	::Meta::BitSize
			(	::Meta::Type<t_tEntity>
			)
		,	t_rpName
			...
		>
	{
		static auto constexpr
		(	ConstView
		)	(	::ATR::ID<t_rpName...>
					i_vName
			,	::std::byte
				*	i_aBuffer
			)
			noexcept
		->	decltype(auto)
		{	return
			View
			(	i_vName
			,	i_aBuffer
			);
		}
	};


	template
		<	Meta::USize
				t_nSize
		>
	auto constexpr
	(	BitFieldOffsetArray
	)	(	::std::array<::Meta::USize, t_nSize> const
			&	i_rSizes
		)
	->	::std::array<USize, t_nSize>
	{
		::std::array<USize, t_nSize>
			vOffsetArray
		{};

		::std::transform
		(	begin(i_rSizes)
		,	end(i_rSizes)
		,	begin(vOffsetArray)
		,	[	m_nOffset = 0uz
			]	(	USize
						i_nSize
				)	mutable
			->	USize
			{
				auto const nCurrent = m_nOffset;
				m_nOffset += i_nSize;
				return nCurrent;
			}
		);
		return vOffsetArray;
	}

	template
		<	typename
			...	t_tpBitView
		>
	struct
		BitLayout
	:	t_tpBitView
		...
	{
		using t_tpBitView::View...;
		using t_tpBitView::ConstView...;
		using t_tpBitView::MoveView...;

		static auto constexpr
			BitCount
		=(	0uz
		+	...
		+	t_tpBitView
		::	BitSize
		);

		static auto constexpr
			BufferSize
		=	BitCount / BitsPerByte
		;

		::std::byte
			Buffer
			[	BufferSize
			]
		;

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	&
			noexcept
		->	decltype(auto)
		{	return
			View
			(	i_vMemberID
			,	+Buffer
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(auto)
		{	return
			ConstView
			(	i_vMemberID
			,	+Buffer
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	&&
			noexcept
		->	decltype(auto)
		{	return
			MoveView
			(	i_vMemberID
			,	+Buffer
			);
		}
	};

	template
		<	USize
				t_nOffset
		,	typename
				t_tData
		,	char const
			&
			...	t_rpName
		>
	auto constexpr
	(	MakeBitView
	)	(	::Member<t_tData, t_rpName...>
		)
	->	BitView
		<	t_nOffset
		,	t_tData
		,	t_rpName
			...
		>
	;

	template
		<	USize
				t_nOffset
		,	typename
				t_tMember
		>
	using
		DeduceBitView
	=	decltype
		(	MakeBitView
			<	t_nOffset
			>(	t_tMember{}
			)
		)
	;

	template
		<	typename
			...	t_tpBitFieldMember
		>
	auto constexpr
	(	MakeBitLayout
	)	()
	{
		auto constexpr
			vOffsetArray
		=	BitFieldOffsetArray
			(	{	t_tpBitFieldMember::BitSize
					...
				}
			)
		;

		return
		[	&vOffsetArray
		]	<	USize
				...	t_npIndex
			>(	IndexToken<t_npIndex...>
			)
		{
			return
			BitLayout
			<	DeduceBitView
				<	vOffsetArray[t_npIndex]
				,	t_tpBitFieldMember
				>
				...
			>{};
		}(	Sequence<sizeof...(t_tpBitFieldMember)>
		);
	}
}
