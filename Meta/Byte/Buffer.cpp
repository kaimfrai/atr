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
	using
		Buffer
	=	::std::array
		<	::std::byte
		,	t_nSize.get()
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

	auto constexpr
	(	AsBuffer
	)	(	auto const
			&	i_rObject
		)
		noexcept
	->	BufferFor
		<	decltype(i_rObject)
		>
	{	return
		::std::bit_cast
		<	BufferFor
			<	decltype(i_rObject)
			>
		>(	i_rObject
		);
	}

	template
		<	typename
				t_tObject
		>
	auto constexpr
	(	AsObject
	)	(	BufferFor
			<	t_tObject
			>	const
			&	i_rBuffer
		)
		noexcept
	->	t_tObject
	{	return
		::std::bit_cast
		<	t_tObject
		>(	i_rBuffer
		);
	}

	template
		<	Bytes
				t_nSize
		>
	struct
		Copy
	{
		Buffer<t_nSize>
			m_vValue
		;

		explicit(false) constexpr
		(	Copy
		)	()
			noexcept
		=	default;

		explicit(false) constexpr
		(	Copy
		)	(	auto const
				&	i_rValue
			)
			noexcept
		:	m_vValue
			{	AsBuffer
				(	i_rValue
				)
			}
		{}

		template
			<	typename
					t_tObject
			>
		[[nodiscard]]
		explicit(false) constexpr
		(	operator t_tObject
		)	()	const
			noexcept
		requires
			(	SizeOf<t_tObject>
			==	t_nSize
			)
		{	return
			AsObject
			<	t_tObject
			>(	m_vValue
			);
		}

		friend auto constexpr
		(	begin
		)	(	Copy
				&	i_rCopy
			)
		->	decltype(auto)
		{	return i_rCopy.m_vValue.begin();	}

		[[nodiscard]]
		friend auto constexpr
		(	begin
		)	(	Copy const
				&	i_rCopy
			)
		->	decltype(auto)
		{	return i_rCopy.m_vValue.begin();	}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	Copy
				&	i_rCopy
			)
		->	decltype(auto)
		{	return end(i_rCopy.m_vValue);	}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	Copy const
				&	i_rCopy
			)
		->	decltype(auto)
		{	return end(i_rCopy.m_vValue);	}
	};

	template
		<	typename
				t_tObject
		>
	(	Copy
	)	(	t_tObject const
			&
		)
	->	Copy
		<	SizeOf<t_tObject>
		>
	;

	template
		<	Bytes
				t_nObjectBytes
		,	Bytes
				t_nValueBytes
			=	t_nObjectBytes
		>
	[[nodiscard]]
	auto constexpr
	(	ReadBuffer
	)	(	::std::byte const
			*	i_aBytes
		,	Bytes
				i_nActiveValueBytes
			=	t_nValueBytes
		)
		noexcept
	->	Copy<t_nObjectBytes>
	{
		static_assert(t_nValueBytes <= t_nObjectBytes);

		if (i_nActiveValueBytes > t_nValueBytes)
			::std::unreachable();

		Copy<t_nObjectBytes>
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
		,	Bytes
				t_nValueBytes
		>
	[[nodiscard]]
	auto constexpr
	(	ReadBuffer
	)	(	Copy<t_nValueBytes> const
			&	i_rCopy
		,	Bytes
				i_nActiveValueBytes
			=	t_nValueBytes
		)
		noexcept
	->	Copy<t_nObjectBytes>
	{
		if	constexpr(t_nObjectBytes == t_nValueBytes)
			return i_rCopy;
		else
		{	return
			ReadBuffer
			<	t_nObjectBytes
			,	t_nValueBytes
			>(	i_rCopy.begin()
			,	i_nActiveValueBytes
			);
		}
	}

	template
		<	Bytes
				t_nObjectBytes
		,	Bytes
				t_nValueBytes
			=	t_nObjectBytes
		>
	auto constexpr
	(	WriteBuffer
	)	(	Copy<t_nObjectBytes> const
			&	i_rObject
		,	::std::byte
			*	o_aBytes
		,	Bytes
				i_nActiveValueBytes
			=	t_nValueBytes
		)
		noexcept
	->	::std::byte*
	{
		static_assert(t_nValueBytes <= t_nObjectBytes);

		if (i_nActiveValueBytes > t_nValueBytes)
			::std::unreachable();

		return
		::std::copy
		(	begin(i_rObject)
		,	begin(i_rObject) + i_nActiveValueBytes
		,	o_aBytes
		);
	}

	template
		<	Bytes
				t_nValueBytes
		,	Bytes
				t_nObjectBytes
		>
	auto constexpr
	(	WriteBuffer
	)	(	Copy<t_nObjectBytes> const
			&	i_rObject
		,	Bytes
				i_nActiveValueBytes
			=	t_nValueBytes
		)
		noexcept
	->	Buffer<t_nValueBytes>
	{
		if	constexpr(t_nValueBytes == t_nObjectBytes)
		{
			return
				i_rObject.m_vValue
			;
		}
		else
		{
			Buffer<t_nValueBytes>
				vBuffer
			;
			WriteBuffer
			(	i_rObject
			,	vBuffer.begin()
			,	i_nActiveValueBytes
			);
			return
				vBuffer
			;
		}
	}
}
