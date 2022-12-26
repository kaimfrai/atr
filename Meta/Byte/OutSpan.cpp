export module Meta.Byte.OutSpan;

import Meta.Byte.InSpan;
import Meta.Byte.Count;
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

		explicit(false) constexpr
		(	OutSpan
		)	(	::std::byte*
					i_aBegin
			,	Bytes
					i_nSize
			)
		:	m_vOut
			{	i_aBegin
			,	i_nSize.get()
			}
		{}

		[[nodiscard]]
		auto constexpr
		(	size
		)	()	const
			noexcept
		->	Bytes
		{	return
			{	m_vOut
			.	size()
			};
		}

		[[nodiscard]]
		auto constexpr
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
		auto constexpr
		(	end
		)	()	const
			noexcept
		->	decltype(auto)
		{	return
				m_vOut
			.	end()
			;
		}

		auto constexpr
		(	operator =
		)	(	InSpan
					i_vFrom
			)	const&
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
				i_vFrom = i_vFrom.subspan(0_bytes, nOutSize);
			}

			auto const aLast
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
