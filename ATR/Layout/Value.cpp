export module ATR.Layout.Value;

import Meta.Token.Specifier;

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
}
