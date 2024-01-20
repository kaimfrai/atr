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
				t_vSize
		>
	struct
		Buffer final
	{
		::std::byte
			m_vValue
			[	t_vSize
				.	get
					()
			]
		;

		explicit(false) constexpr inline
		(	Buffer
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Buffer
		)	(	InSpan
					i_vBytes
			)
			noexcept
		{
			(	OutSpan
				{	m_vValue
				,	t_vSize
				}
			=	i_vBytes
			);
		}

		explicit(true) constexpr inline
		(	Buffer
		)	(	auto const
				&	i_rObject
			)
			noexcept
		requires
			(	Memory::SizeOf
				<	decltype(i_rObject)
				>
			==	t_vSize
			)
		:	Buffer
			{	::std::bit_cast
				<	Buffer
				>(	i_rObject
				)
			}
		{}

		explicit(true) constexpr inline
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

		explicit(true) constexpr inline
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
		explicit(true) constexpr inline
		(	operator
			InSpan
		)	()	const
			noexcept
		{	return
			InSpan
			{	m_vValue
			,	t_vSize
			};
		}

		template
			<	typename
					t_tObject
			>
		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			t_tObject
		)	()	const
			noexcept
		{
			auto static constexpr
				vByteSize
			=	Memory::SizeOf
				<	t_tObject
				>
			;

			if	constexpr
				(	vByteSize
				==	t_vSize
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
				(	Buffer<vByteSize>
					{	static_cast<InSpan>
						(	*this
						)
					}
				);
			}
		}

		[[nodiscard]]
		auto friend constexpr inline
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
		auto friend constexpr inline
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

		auto friend constexpr inline
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
	auto constexpr inline
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
