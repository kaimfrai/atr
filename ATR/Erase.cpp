export module ATR.Erase;

import ATR.Layout.Offset;

import Meta.Memory.Size;

import std;

using ::Meta::BitSize;
using ::ATR::Layout::Offset;

export namespace
	ATR
{
	struct
		ErasureBase
	{
		template
			<	typename
					t_tData
			,	BitSize
					t_vOffset
			,	typename
				...	t_tpIndirectOffsets
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	this auto
					i_rErasure
			,	Offset<t_tData, t_vOffset, t_tpIndirectOffsets...>
					i_vOffset
			)
			noexcept
		->	decltype(auto)
		{	return
			i_vOffset
			(	i_rErasure
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	data
		)	(	this auto
					i_rErasure
			)
			noexcept
		->	auto
		{	return
				i_rErasure
				.	m_aData
			;
		}
	};

	struct
		RErasure
	:	ErasureBase
	{
		::std::byte
		*	m_aData
		;

		template
			<	typename
					t_tObject
			>
		[[nodiscard]]
		auto constexpr inline
		(	As
		)	(	this RErasure
					i_rErasure
			)
			noexcept
		->	t_tObject&
		{	return
				*
				::std::launder
				(	::std::bit_cast<t_tObject*>
					(	i_rErasure
					)
				)
			;
		}
	};

	struct
		CErasure
	:	ErasureBase
	{
		::std::byte const
		*	m_aData
		;

		template
			<	typename
					t_tObject
			>
		[[nodiscard]]
		auto constexpr inline
		(	As
		)	(	this CErasure
					i_rErasure
			)
			noexcept
		->	t_tObject const&
		{	return
			*	::std::launder
				(	::std::bit_cast<t_tObject const*>
					(	i_rErasure
					)
				)
			;
		}
	};

	struct
		XErasure
	:	ErasureBase
	{
		::std::byte
		*	m_aData
		;

		template
			<	typename
					t_tObject
			>
		[[nodiscard]]
		auto constexpr inline
		(	As
		)	(	this XErasure
					i_xErasure
			)
			noexcept
		->	t_tObject&&
		{	return
			static_cast<t_tObject&&>
			(*	::std::launder
				(	::std::bit_cast<t_tObject*>
					(	i_xErasure
					)
				)
			);
		}
	};

	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto constexpr inline
	(	ForwardErased
	)	(	t_tObject
			&	i_rObject
		)
		noexcept
	->	RErasure
	{	return
		::std::bit_cast<RErasure>
		(	::std::addressof
			(	i_rObject
			)
		);
	}

	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto constexpr inline
	(	ForwardErased
	)	(	t_tObject const
			&	i_rObject
		)
		noexcept
	->	CErasure
	{	return
		::std::bit_cast<CErasure>
		(	::std::addressof
			(	i_rObject
			)
		);
	}

	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto constexpr inline
	(	ForwardErased
	)	(	t_tObject
			&&	i_rObject
		)
		noexcept
	->	XErasure
	{	return
		::std::bit_cast<XErasure>
		(	::std::addressof
			(	i_rObject
			)
		);
	}

	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto constexpr inline
	(	ForwardErased
	)	(	t_tObject const
			&&
		)
		noexcept
	=	delete;

	[[nodiscard]]
	auto constexpr inline
	(	AsErasure
	)	(	::std::byte
			(&	i_rBuffer
			)	[]
		)
		noexcept
	->	RErasure
	{	return
		{	.	m_aData
			=	i_rBuffer
		};
	}

	[[nodiscard]]
	auto constexpr inline
	(	AsErasure
	)	(	::std::byte const
			(&	i_rBuffer
			)	[]
		)
		noexcept
	->	CErasure
	{	return
		{	.	m_aData
			=	i_rBuffer
		};
	}

	[[nodiscard]]
	auto constexpr inline
	(	AsErasure
	)	(	::std::byte
			(&&	i_rBuffer
			)	[]
		)
		noexcept
	->	XErasure
	{	return
		{	.	m_aData
			=	i_rBuffer
		};
	}

	template
		<	typename
				t_tObject
		>
	using
		ErasedType
	=	decltype
		(	ForwardErased
			(	::std::declval
				<	t_tObject
				>()
			)
		)
	;
}
