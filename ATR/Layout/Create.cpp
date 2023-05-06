export module ATR.Layout.Create;

import ATR.Layout.Bit;
import ATR.Layout.Empty;
import ATR.Layout.Fork;
import ATR.Layout.ValidateOffsets;
import ATR.Layout.Value;
import ATR.Member.Config;

import Meta.Memory.Alignment;
import Meta.Size;
import Meta.Token.Type;

import Std;

using ::Meta::Memory::Alignment;
using ::Meta::RestoreTypeEntity;
using ::Meta::USize;

using namespace ::Meta::Literals;

namespace
	ATR::Layout
{
	auto constexpr
	(	operator+
	)	(	Empty
		,	Empty
		)
		noexcept
	->	Empty
	{	return
		{};
	}

	auto constexpr
	(	operator+
	)	(	auto
				i_vLayout
		,	Empty
		)
		noexcept
	->	decltype(i_vLayout)
	{	return
		{};
	}

	auto constexpr
	(	operator+
	)	(	Empty
		,	auto
				i_vLayout
		)
		noexcept
	->	decltype(i_vLayout)
	{	return
		{};
	}

	auto constexpr
	(	operator+
	)	(	auto
				i_vLayout
		,	Bit<>
		)
		noexcept
	->	decltype(auto)
	{	return
			i_vLayout
		;
	}

	template
		<	typename
				t_tLeft
		,	typename
				t_tRight
		>
	auto constexpr
	(	operator+
	)	(	t_tLeft
		,	t_tRight
		)
		noexcept
	->	Fork<t_tLeft, t_tRight>
	{	return
		{};
	}
}

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
	(	CreateLayout
	)	(	auto
				i_vTypeName
		)
		noexcept
	{
		auto static constexpr
		&	rLayout
		=	Member::Config_Of
			<	i_vTypeName
			>
			.	Layout
		;

		auto static constexpr
		&	rAlign1Types
		=	rLayout
				[	1_align
				]
		;
		auto static constexpr
		&	rAlign2Types
		=	rLayout
				[	2_align
				]
		;
		auto static constexpr
		&	rAlign3Types
		=	rLayout
				[	3_align
				]
		;

		auto static constexpr
			vBitLayout
		=	[]	<	::std::size_t
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
					<	rAlign1Types
							[	t_vpAlign3Index
							]
					>
					...
				,	RestoreTypeEntity
					<	rAlign2Types
							[	t_vpAlign2Index
							]
					>
					...
				,	RestoreTypeEntity
					<	rAlign1Types
							[	t_vpAlign1Index
							]
					>
					...
				>{};
			}(	::std::make_index_sequence
				<	rAlign3Types
					.	size
						()
				>{}
			,	::std::make_index_sequence
				<	rAlign2Types
					.	size
						()
				>{}
			,	::std::make_index_sequence
				<	rAlign1Types
					.	size
						()
				>{}
			)
		;

		auto static constexpr
			fGetAlignedLayout
		=	[]	<	::std::size_t
						t_vIndex
				>(	::std::index_sequence
					<	t_vIndex
					>
				)
			{
				Alignment static constexpr
					vAlignment
				{	rLayout
					.	size
						()
				-	t_vIndex
				-	1uz
				};

				auto static constexpr
				&	rAlignBuffer
				=	rLayout
						[	vAlignment
						]
				;

				return
				[]	<	::std::size_t
						...	t_vpIndex
					>(	::std::index_sequence
						<	t_vpIndex
							...
						>
					)
				{	return
					(	Value
						<	RestoreTypeEntity
							<	rAlignBuffer
									[	t_vpIndex
									]
							>
						>{}
					+	...
					+	Empty
						{}
					);
				}(	::std::make_index_sequence
					<	rAlignBuffer
						.	size
							()
					>{}
				);
			}
		;

		return
		[]	<	::std::size_t
				...	t_vpDynamicIndex
			>(	::std::index_sequence
				<	t_vpDynamicIndex
					...
				>
			)
		{

			auto const
				vLayout
			=	(	fGetAlignedLayout
					(	::std::index_sequence
						<	t_vpDynamicIndex
						>{}
					)
				+	...
				+	vBitLayout
				)
			;

			ValidateOffsets
			(	vLayout
			);

			return
				vLayout
			;
		}(	::std::make_index_sequence
			<	rLayout
				.	size
					()
			-	4uz
			>{}
		);
	}
}
