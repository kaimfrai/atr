export module ATR.Layout.ErasureView;

import std;

export namespace
	ATR::Layout
{
	struct
		MutableData
	{
		::std::byte
		*	m_aData
		;
	};

	struct
		ConstData
	{
		::std::byte const
		*	m_aData
		;
	};

	template
		<	typename
				t_tTarget
		>
	struct
		EnableCastTo
	{
		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			t_tTarget
		)	(	this auto
					i_rView
			)
			noexcept
		{	return
			t_tTarget
			(	*
				//	We don't know where the byte array came from
				//	so we need to launder it
				::std::launder
				(	::std::bit_cast
					<	::std::add_pointer_t
						<	t_tTarget
						>
					>(	i_rView
						.	m_aData
					)
				)
			);
		}
	};

	template
		<	typename
				t_tTarget
		>
	struct
		EnableReadAs
	{
		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			t_tTarget
		)	(	this auto
					i_rView
			)
			noexcept
		{
			::std::byte
				vBuffer
				[	sizeof(t_tTarget)
				]
			;
			::std::copy
			(	i_rView
				.	m_aData
			,		i_rView
					.	m_aData
				+	sizeof(t_tTarget)
			,	vBuffer
			);
			return
				::std::bit_cast<t_tTarget>
				(	vBuffer
				)
			;
		}
	};

	template
		<	typename
				t_tTarget
		>
	struct
		EnableWriteAs
	{
		auto constexpr inline
		(	operator=
		)	(	this auto
				&	i_rView
			,	t_tTarget const
				&	i_rTarget
			)
			noexcept
		->	decltype(i_rView)
		{
			auto const
				vBuffer
			=	::std::bit_cast
				<	::std::array
					<	::std::byte
					,	sizeof(t_tTarget)
					>
				>(	i_rTarget
				)
			;
			::std::copy
			(	vBuffer
				.	begin
					()
			,	vBuffer
				.	end
					()
			,	i_rView
				.	m_aData
			);
			return
				i_rView
			;
		}
	};

	template
		<	typename
				t_tTarget
		>
	struct
		ErasureView
	:	MutableData
	,	EnableCastTo
		<	t_tTarget
			&
		>
	,	EnableCastTo
		<	t_tTarget const
			&
		>
	,	EnableCastTo
		<	t_tTarget
			&&
		>
	,	EnableReadAs
		<	t_tTarget
		>
	,	EnableWriteAs
		<	t_tTarget
		>
	{};

	template
		<	typename
				t_tTarget
		>
	struct
		ErasureView
		<	t_tTarget const
		>
	:	ConstData
	,	EnableCastTo
		<	t_tTarget const
			&
		>
	,	EnableReadAs
		<	t_tTarget
		>
	{};
}
