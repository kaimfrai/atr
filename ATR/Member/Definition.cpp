export module ATR.Member.Definition;

import ATR.Member.List;

import Meta.ID.StringLiteral;

using ::Meta::StringLiteral;

export namespace
	ATR::Member
{
	template
		<	List
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
}
