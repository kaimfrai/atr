export module Meta.Byte.Buffer;

import Meta.Byte.OutSpan;
import Meta.Byte.InSpan;
import Meta.Byte.Count;
import Std;

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

		auto constexpr
		(	operator =
		)	(	Buffer const
				&
			)	&
			noexcept
		->	Buffer&
		=	default;

		auto constexpr
		(	operator =
		)	(	Buffer
				&&
			)	&
			noexcept
		->	Buffer&
		=	default;

		explicit(true) constexpr
		(	Buffer
		)	(	InSpan
					i_vBytes
			)
			noexcept
		{
			OutSpan{m_vValue, t_nSize} = i_vBytes;
		}

		explicit(true) constexpr
		(	Buffer
		)	(	auto const
				&	i_rObject
			)
			noexcept
		requires
			(	SizeOf<decltype(i_rObject)>
			==	t_nSize
			)
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
			{	InSpan
				{	i_vByteList
				}
			}
		{}

		template
			<	typename
					t_tObject
			>
		requires
			(	SizeOf<t_tObject>
			>=	t_nSize
			)
		[[nodiscard]]
		explicit(true) constexpr
		(	operator t_tObject
		)	()	const
			noexcept
		{
			auto constexpr
				nObjectSize
			=	SizeOf<t_tObject>
			;

			if	constexpr(nObjectSize == t_nSize)
			{
				return
				::std::bit_cast
				<	t_tObject
				>(	*this
				);
			}
			else
			{
				return
				static_cast<t_tObject>
				(	Buffer<nObjectSize>
					{	InSpan
						{	*this
						}
					}
				);
			}
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
