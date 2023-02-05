export module ATR.Member.Definition;

import ATR.Member.List;

import Meta.ID.StringLiteral;

import Std;

using ::Meta::StringLiteral;

export namespace
	ATR::Member
{
	template
		<	auto
				t_vList
		>
	struct
		Definition final
	{
		[[nodiscard]]
		static auto constexpr
		(	get
		)	()
			noexcept
		->	decltype(t_vList) const&
		{	return t_vList;	}

		[[nodiscard]]
		explicit(false) constexpr
		(	operator decltype(t_vList) const&
		)	()	const
			noexcept
		{	return t_vList;	}
	};

	/// maps a string literal to a Layout
	template
		<	StringLiteral
		>
	Definition
	<	List<0uz>{}
	>	const extern
		Definition_For
	;

	/// maps a string literal to a Layout
	template
		<	StringLiteral
				t_vType
		>
	auto const constexpr inline
	&	All_Of
	=	Definition_For
		<	t_vType
		>
	.	get()
	;

	template
		<	StringLiteral
				t_vType
		>
	auto constexpr
	(	operator""_def
	)	()
		noexcept
	->	decltype(auto)
	{	return
		(	Definition_For
			<	t_vType
			>
		.	get()
		);
	}
}
