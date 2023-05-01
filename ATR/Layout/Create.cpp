export module ATR.Layout.Create;

import ATR.Layout.Bit;
import ATR.Layout.Empty;
import ATR.Layout.Fork;
import ATR.Layout.ValidateOffsets;
import ATR.Layout.Value;

import Meta.Memory.Alignment;
import Meta.Size;
import Meta.Token.Type;

import Std;

using ::Meta::Memory::Alignment;
using ::Meta::RestoreTypeEntity;
using ::Meta::USize;

template
	<	USize
			t_vSize
	,	typename
			t_tElement
	>
auto constexpr
(	ToArray
)	(	::std::span
		<	t_tElement const
		>	i_rElements
	)
	noexcept
->	::std::array
	<	t_tElement
	,	t_vSize
	>
{	::std::array
	<	t_tElement
	,	t_vSize
	>
		vResult
	{};

	::std::copy
	(	i_rElements
		.	begin
			()
	,	i_rElements
		.	end
			()
	,	vResult
		.	begin
			()
	);

	return
		vResult
	;
}

export namespace
	ATR::Layout
{
	[[nodiscard]]
	auto constexpr
	(	DeduceFork
	)	(	Empty
		,	Empty
		)
		noexcept
	->	Empty
	{	return
		{};
	}

	template
		<	typename
				t_tNorth
		>
	[[nodiscard]]
	auto constexpr
	(	DeduceFork
	)	(	t_tNorth const
			&
		,	Empty
		)
		noexcept
	->	t_tNorth
	{	return
		{};
	}

	template
		<	typename
				t_tSouth
		>
	[[nodiscard]]
	auto constexpr
	(	DeduceFork
	)	(	Empty
		,	t_tSouth const
			&
		)
		noexcept
	->	t_tSouth
	{	return
		{};
	}

	template
		<	typename
				t_tNorth
		,	typename
				t_tSouth
		>
	[[nodiscard]]
	auto constexpr
	(	DeduceFork
	)	(	t_tNorth const
			&
		,	t_tSouth const
			&
		)
		noexcept
	->	Fork
		<	t_tNorth
		,	t_tSouth
		>
	{	return
		{};
	}

	template
		<	auto
				t_vTypeBuffer
		>
	[[nodiscard]]
	auto constexpr
	(	MakeFork
	)	()
		noexcept
	->	decltype(auto)
	{
		auto constexpr
			vBufferSize
		=	t_vTypeBuffer
			.	size
				()
		;

		if	constexpr
			(	vBufferSize
			==	0uz
			)
		{	return
			Empty
			{};
		}
		else
		if	constexpr
			(	vBufferSize
			==	1uz
			)
		{	return
			Value
			<	RestoreTypeEntity
				<	t_vTypeBuffer
						[	0uz
						]
				>
			>{};
		}
		else
		{
			auto constexpr
				vSplitIndex
			=	::std::bit_floor
				(	vBufferSize
					-	1uz
				)
			;

			auto constexpr
				vNorth
			=	::ToArray
				<	vSplitIndex
				>(	::std::span
					{	t_vTypeBuffer
					}
				.	first
					(	vSplitIndex
					)
				)
			;

			auto constexpr
				vSouth
			=	::ToArray
				<	vBufferSize
				-	vSplitIndex
				>(	::std::span
					{	t_vTypeBuffer
					}
				.	subspan
					(	vSplitIndex
					)
				)
			;

			return
			DeduceFork
			(	MakeFork
				<	vNorth
				>()
			,	MakeFork
				<	vSouth
				>()
			);
		}
	}

	template
		<	auto
				t_vAlign3
		,	auto
				t_vAlign2
		,	auto
				t_vAlign1
		>
	[[nodiscard]]
	auto constexpr
	(	MakeBit
	)	()
		noexcept
	->	decltype(auto)
	{
		if	constexpr
			(	(	t_vAlign3
					.	size
						()
				+	t_vAlign2
					.	size
						()
				+	t_vAlign1
					.	size
						()
				)
			<=	0uz
			)
		{	return
			Empty
			{};
		}
		else
		{	return
			[]	<	::std::size_t
					...	t_vpAlign3Index
				,	::std::size_t
					...	t_vpAlign2Index
				,	::std::size_t
					...	t_vpAlign1Index
				>(	::std::index_sequence
					<	t_vpAlign3Index
						...
					>
				,	::std::index_sequence
					<	t_vpAlign2Index
						...
					>
				,	::std::index_sequence
					<	t_vpAlign1Index
						...
					>
				)
			{	return
				Bit
				<	RestoreTypeEntity
					<	t_vAlign3
							[	t_vpAlign3Index
							]
					>
					...
				,	RestoreTypeEntity
					<	t_vAlign2
							[	t_vpAlign2Index
							]
					>
					...
				,	RestoreTypeEntity
					<	t_vAlign1
							[	t_vpAlign1Index
							]
					>
					...
				>{};
			}(	::std::make_index_sequence
				<	t_vAlign3
					.	size
						()
				>{}
			,	::std::make_index_sequence
				<	t_vAlign2
					.	size
						()
				>{}
			,	::std::make_index_sequence
				<	t_vAlign1
					.	size
						()
				>{}
			);
		}
	}

	template
		<	auto
				t_vFirst
		,	auto
			...	t_vpAlignOther
		>
	[[nodiscard]]
	auto constexpr
	(	MakeValue
	)	()
		noexcept
	->	decltype(auto)
	{
		if	constexpr
			(	sizeof...
				(	t_vpAlignOther
				)
			==	2uz
			)
		{	return
			MakeBit
			<	t_vFirst
			,	t_vpAlignOther
				...
			>();
		}
		else
		{
			auto constexpr
				vFirst
			=	MakeFork
				<	t_vFirst
				>()
			;
			if	constexpr
				(	sizeof...
					(	t_vpAlignOther
					)
				>	0uz
				)
			{	return
				DeduceFork
				(	vFirst
				,	MakeValue
					<	t_vpAlignOther
						...
					>()
				);
			}
			else
			{
				return
					vFirst
				;
			}
		}
	}

	template
		<	auto
				t_vLayout
		>
	[[nodiscard]]
	auto constexpr
	(	CreateLayout
	)	()
		noexcept
	->	decltype(auto)
	{
		auto static constexpr
			fGetAlignedArray
		=	[]	<	::std::size_t
						t_vIndex
				>(	::std::index_sequence
					<	t_vIndex
					>
				)
			{
				Alignment constexpr
					vAlignment
				{	t_vLayout
					.	size
						()
				-	t_vIndex
				};

				auto constexpr
				&	rAlignBuffer
				=	t_vLayout
						[	vAlignment
						]
				;

				return
				::ToArray
				<	rAlignBuffer
					.	size
						()
				>(	rAlignBuffer
					.	View
						()
				);
			}
		;

		return
		[]	<	::std::size_t
				...	t_vpDynamicIndex
			>(	::std::index_sequence
				<	// Ignore statics
					0uz
				,	t_vpDynamicIndex
					...
				>
			)
		{
			auto const
				vLayout
			=	MakeValue
				<	fGetAlignedArray
					(	::std::index_sequence
						<	t_vpDynamicIndex
						>{}
					)
					...
				>()
			;

			ValidateOffsets
			(	vLayout
			);

			return
				vLayout
			;
		}(	::std::make_index_sequence
			<	t_vLayout
				.	size
					()
			>{}
		);
	}
}
