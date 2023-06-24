export module ATR.Layout.Value;

import Meta.Size;
import Meta.Token.Specifier;

using ::Meta::Specifier::Mut;
using ::Meta::USize;

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

		explicit(false) constexpr inline
		(	Value
		)	()
		=	default;

		explicit(false) constexpr inline
		(	Value
		)	(	Value const
				&
			)
		=	default;

		explicit(false) constexpr inline
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
		,	USize
				t_vExtent
		>
	struct
		Value
		<	Mut<t_tData>
				[	t_vExtent
				]
		>
	{
		t_tData mutable
			Data
			[	t_vExtent
			]
		;
	};
}
