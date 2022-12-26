export module Meta.Byte.Buffer;

import Meta.Byte.Count;
import Std;

static_assert
(	::std::endian::native
==	::std::endian::little
,	"Big Endian not yet supported for Meta::Byte::Buffer!"
);

export namespace
	Meta::Byte
{
	template
		<	Bytes
				t_nSize
		>
	struct
		Buffer
	{
		::std::byte
			m_vValue
		[	t_nSize.get()
		];

		template
			<	Bytes
					t_nValueBytes
				=	t_nSize
			>
		[[nodiscard]]
		static auto constexpr
		(	ReadBuffer
		)	(	::std::byte const
				*	i_aBytes
			,	Bytes
					i_nActiveValueBytes
				=	t_nValueBytes
			)
			noexcept
		->	Buffer<t_nSize>
		{
			static_assert(t_nValueBytes <= t_nSize);

			if (i_nActiveValueBytes > t_nValueBytes)
				::std::unreachable();

			Buffer<t_nSize>
				vObject
			;

			::std::copy
			(	i_aBytes
			,	i_aBytes + i_nActiveValueBytes
			,	begin(vObject)
			);
			::std::fill
			(	begin(vObject) + i_nActiveValueBytes
			,	end(vObject)
			,	::std::byte{}
			);

			return
				vObject
			;
		}

		template
			<	Bytes
					t_nObjectBytes
			>
		[[nodiscard]]
		auto constexpr
		(	ReadBuffer
		)	(	Bytes
					i_nActiveValueBytes
				=	t_nSize
			)	const
			noexcept
		->	Buffer<t_nObjectBytes>
		{
			if	constexpr(t_nObjectBytes == t_nSize)
				return *this;
			else
			{	return
				Buffer<t_nObjectBytes>::template ReadBuffer
				<	t_nSize
				>(	begin(*this)
				,	i_nActiveValueBytes
				);
			}
		}

		template
			<	Bytes
					t_nValueBytes
				=	t_nSize
			>
		auto constexpr
		(	WriteBuffer
		)	(	::std::byte
				*	o_aBytes
			,	Bytes
					i_nActiveValueBytes
				=	t_nValueBytes
			)	const
			noexcept
		->	::std::byte*
		{
			static_assert(t_nValueBytes <= t_nSize);

			if (i_nActiveValueBytes > t_nValueBytes)
				::std::unreachable();

			return
			::std::copy
			(	begin(*this)
			,	begin(*this) + i_nActiveValueBytes
			,	o_aBytes
			);
		}

		template
			<	Bytes
					t_nValueBytes
			>
		auto constexpr
		(	WriteBuffer
		)	(	Bytes
					i_nActiveValueBytes
				=	t_nValueBytes
			)	const
			noexcept
		->	Buffer<t_nValueBytes>
		{
			if	constexpr(t_nValueBytes == t_nSize)
			{
				return
					*this
				;
			}
			else
			{
				Buffer<t_nValueBytes>
					vBuffer
				;
				WriteBuffer
				(	vBuffer.begin()
				,	i_nActiveValueBytes
				);
				return
					vBuffer
				;
			}
		}

		explicit(false) constexpr
		(	Buffer
		)	()
			noexcept
		=	default;

		explicit(false) constexpr
		(	Buffer
		)	(	Buffer const
				&
			)
			noexcept
		=	default;

		explicit(false) constexpr
		(	Buffer
		)	(	Buffer
				&&
			)
			noexcept
		=	default;

		explicit(true) constexpr
		(	Buffer
		)	(	auto const
				&	i_rObject
			)
			noexcept
		:	Buffer
			{	::std::bit_cast
				<	Buffer
				>(	i_rObject
				)
			}
		{}

		explicit(true) constexpr
		(	Buffer
		)	(	::std::initializer_list<::std::byte>
					i_vByteList
			)
			noexcept
		:	Buffer
			{	ReadBuffer<>
				(	i_vByteList.begin()
				,	Bytes{i_vByteList.size()}
				)
			}
		{}

		template
			<	typename
					t_tObject
			>
		requires
			(	SizeOf<t_tObject>
			==	t_nSize
			)
		[[nodiscard]]
		explicit(true) constexpr
		(	operator t_tObject
		)	()	const
			noexcept
		{	return
			::std::bit_cast
			<	t_tObject
			>(	*this
			);
		}

		friend auto constexpr
		(	operator +
		)	(	Buffer
				&	i_rBuffer
			)
		->	::std::byte*
		{	return	+i_rBuffer.m_vValue;	}

		friend auto constexpr
		(	operator +
		)	(	Buffer const
				&	i_rBuffer
			)
		->	::std::byte const*
		{	return	+i_rBuffer.m_vValue;	}

		friend auto constexpr
		(	operator +
		)	(	Buffer const volatile
				&&	i_rBuffer
			)
		=	delete;

		friend auto constexpr
		(	begin
		)	(	Buffer
				&	i_rBuffer
			)
		->	decltype(auto)
		{	return ::std::begin(i_rBuffer.m_vValue);	}

		[[nodiscard]]
		friend auto constexpr
		(	begin
		)	(	Buffer const
				&	i_rBuffer
			)
		->	decltype(auto)
		{	return ::std::begin(i_rBuffer.m_vValue);	}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	Buffer
				&	i_rBuffer
			)
		->	decltype(auto)
		{	return ::std::end(i_rBuffer.m_vValue);	}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	Buffer const
				&	i_rBuffer
			)
		->	decltype(auto)
		{	return ::std::end(i_rBuffer.m_vValue);	}
	};

	template
		<	typename
				t_tObject
		>
	(	Buffer
	)	(	t_tObject const
			&
		)
	->	Buffer
		<	SizeOf<t_tObject>
		>
	;
	template
		<	::std::same_as<::std::byte>
			...	t_tpByte
		>
	(	Buffer
	)	(	t_tpByte
			...	i_vpByte
		)
	->	Buffer
		<	Bytes
			{	sizeof...(t_tpByte)
			}
		>
	;

	template
		<	typename
				t_tEntity
		>
	using
		BufferFor
	=	Buffer
		<	Bytes
			{	sizeof(t_tEntity)
			}
		>
	;
}
