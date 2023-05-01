export module ATR.Layout.Value;

import Meta.Token.Specifier;

import Std;

using ::Meta::Specifier::Mut;

export namespace
	ATR::Layout
{
	template
		<	typename
				t_tData
		>
	struct
		Value
	{
		t_tData
			Data
		;
	};

	template
		<	typename
				t_tData
		>
	struct
		Value
		<	t_tData const
		>
	{
		t_tData
			Data
		;

		explicit(false) constexpr
		(	Value
		)	()
		=	default
		;

		explicit(false) constexpr
		(	Value
		)	(	Value const
				&
			)
		=	default;

		explicit(false) constexpr
		(	Value
		)	(	Value
				&&
			)
		=	default;

		auto& operator=(Value) = delete;
	};

	template
		<	typename
				t_tData
		>
	struct
		Value
		<	Mut<t_tData>
		>
	{
		t_tData mutable
			Data
		;
	};

	template
		<	typename
				t_tData
		,	::std::size_t
				t_nExtent
		>
	struct
		Value
		<	t_tData
				[	t_nExtent
				]
		>
	{
		::std::array<t_tData, t_nExtent>
			Data
		;
	};

	template
		<	typename
				t_tData
		,	::std::size_t
				t_nExtent
		>
	struct
		Value
		<	t_tData const
				[	t_nExtent
				]
		>
	{
		::std::array<t_tData, t_nExtent>
			Data
		;

		auto& operator=(Value) = delete;
	};

	template
		<	typename
				t_tData
		,	::std::size_t
				t_nExtent
		>
	struct
		Value
		<	Mut
			<	t_tData
					[	t_nExtent
					]
			>
		>
	{
		::std::array<t_tData, t_nExtent> mutable
			Data
		;
	};
}
