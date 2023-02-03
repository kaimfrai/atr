export module ATR.Member.Definition;

import ATR.Member.List;
import ATR.Member.Info;

import Meta.ID.Alias;
import Meta.ID.StringLiteral;
import Meta.Token.Type;
import Meta.Size;

import Std;

using ::Meta::USize;

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
		static auto constexpr
		(	get
		)	()
			noexcept
		->	decltype(t_vList) const&
		{	return t_vList;	}

		explicit(false) constexpr
		(	operator decltype(t_vList) const&
		)	()	const
			noexcept
		{	return t_vList;	}

		friend auto constexpr
		(	operator ==
		)	(	Definition
			,	Definition
			)
			noexcept
		->	bool
		=	default;

		template
			<	List
					t_vRightList
			>
		friend auto constexpr
		(	operator ==
		)	(	Definition
			,	Definition<t_vRightList>
			)
			noexcept
		->	bool
		{	return false;	}
	};

	/// maps a string literal to a Layout
	template
		<	Meta::StringLiteral
		>
	Definition
	<	List<0uz>{}
	>	const extern
		Definition_For
	;

	/// maps a string literal to a Layout
	template
		<	Meta::StringLiteral
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
