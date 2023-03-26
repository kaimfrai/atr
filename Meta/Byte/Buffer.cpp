export module Meta.Byte.Buffer;

import Meta.Byte.OutSpan;
import Meta.Byte.InSpan;
import Meta.Memory.Size;

import Std;

export namespace
	Meta::Byte
{
	template
		<	ByteSize
				t_nSize
		>
	struct
		Buffer final
	{
		::std::byte
			m_vValue
			[	t_nSize
				.	get
					()
			]
		;

		explicit(false) constexpr
		(	Buffer
		)	()
			noexcept
		=	default;

		explicit(true) constexpr
		(	Buffer
		)	(	InSpan
					i_vBytes
			)
			noexcept
		{
			(	OutSpan
				{	m_vValue
				,	t_nSize
				}
			=	i_vBytes
			);
		}

		explicit(true) constexpr
		(	Buffer
		)	(	auto const
				&	i_rObject
			)
			noexcept
		requires
			(	Memory::SizeOf
				<	decltype(i_rObject)
				>
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
		)	(	auto const
				&	i_rObject
			)
			noexcept
		:	Buffer
			{	InSpan
				{	Buffer
					<	Memory::SizeOf
						<	decltype(i_rObject)
						>
					>{	i_rObject
					}
				}
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

		[[nodiscard]]
		explicit(true) constexpr
		(	operator InSpan
		)	()	const
			noexcept
		{	return
			InSpan
			{	m_vValue
			,	t_nSize
			};
		}

		template
			<	typename
					t_tObject
			>
		[[nodiscard]]
		explicit(true) constexpr
		(	operator t_tObject
		)	()	const
			noexcept
		{
			auto constexpr
				nByteSize
			=	Memory::SizeOf
				<	t_tObject
				>
			;

			if	constexpr
				(	nByteSize
				==	t_nSize
				)
			{	return
				::std::bit_cast
				<	t_tObject
				>(	*this
				);
			}
			else
			{	return
				static_cast<t_tObject>
				(	Buffer<nByteSize>
					{	static_cast<InSpan>
						(	*this
						)
					}
				);
			}
		}

		[[nodiscard]]
		friend
		auto constexpr
		(	operator+
		)	(	Buffer
				&	i_rBuffer
			)
			noexcept
		->	::std::byte*
		{	return
			+	i_rBuffer
			.	m_vValue
			;
		}

		[[nodiscard]]
		friend
		auto constexpr
		(	operator+
		)	(	Buffer const
				&	i_rBuffer
			)
			noexcept
		->	::std::byte const*
		{	return
			+	i_rBuffer
			.	m_vValue
			;
		}

		friend
		auto constexpr
		(	operator+
		)	(	Buffer const volatile
				&&
			)
		=	delete;
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
		<	Memory::SizeOf
			<	t_tObject
			>
		>
	;
	template
		<	::std::same_as<::std::byte>
			...	t_tpByte
		>
	(	Buffer
	)	(	t_tpByte
			...
		)
	->	Buffer
		<	ByteSize
			{	sizeof...(t_tpByte)
			}
		>
	;

	template
		<	typename
				t_tObject
		>
	using
		BufferFor
	=	Buffer
		<	Memory::SizeOf
			<	t_tObject
			>
		>
	;

	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto constexpr
	(	ReadObject
	)	(	InSpan
				i_vBytes
		)
		noexcept
	->	t_tObject
	{	return
		static_cast<t_tObject>
		(	BufferFor<t_tObject>
			{	i_vBytes
			}
		);
	}
}
