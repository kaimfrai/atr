export module Meta.Byte.OutSpan;

import Meta.Byte.InSpan;
import Meta.Memory.Count;
import Meta.Memory.Count.Compare;
import Meta.Memory.Size;
import Meta.Memory.Size.PointerArithmetic;

import Std;

export namespace
	Meta::Byte
{
	class
		OutSpan
	{
		::std::span<::std::byte>
			m_vOut
		;
	public:

		explicit(false) constexpr inline
		(	OutSpan
		)	(	::std::byte
				*	i_aBegin
			,	::std::byte
				*	i_aEnd
			)
			noexcept
		:	m_vOut
			{	i_aBegin
			,	i_aEnd
			}
		{}

		explicit(false) constexpr inline
		(	OutSpan
		)	(	::std::byte
				*	i_aBegin
			,	ByteSize
					i_nSize
			)
		:	OutSpan
			{	i_aBegin
			,	i_aBegin
			+	i_nSize
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	size
		)	()	const
			noexcept
		->	Bytes
		{	return
			{	static_cast<Bytes::CountType>
				(	m_vOut
				.	size()
				)
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const
			noexcept
		->	decltype(auto)
		{	return
				m_vOut
			.	begin()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	const
			noexcept
		->	decltype(auto)
		{	return
				m_vOut
			.	end()
			;
		}

		auto constexpr inline
		(	operator=
		)	(	InSpan
					i_vFrom
			)	const
			noexcept
		->	OutSpan const&
		{
			static_assert
			(	::std::endian::native
			==	::std::endian::little
			,	"Big Endian not yet supported for Meta::Byte::OutSpan!"
			);

			auto const
				nInSize
			=	i_vFrom.size()
			;
			auto const
				nOutSize
			=	size()
			;

			if	(nInSize > nOutSize)
			{
				i_vFrom = i_vFrom.subspan(0_byte, nOutSize);
			}

			auto const
				aLast
			=	::std::copy
				(	i_vFrom.begin()
				,	i_vFrom.end()
				,	begin()
				)
			;
			::std::fill
			(	aLast
			,	end()
			,	::std::byte{}
			);

			return *this;
		}
	};
}
