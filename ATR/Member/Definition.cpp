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
			All
		=	t_vList
		;

		static auto constexpr
		(	get
		)	()
			noexcept
		->	decltype(t_vList) const&
		{	return t_vList;	}

		static auto constexpr
		(	size
		)	()
			noexcept
		->	USize
		{	return t_vList.size();	}

		explicit(false) constexpr
		(	operator decltype(t_vList) const&
		)	()	const
			noexcept
		{	return t_vList;	}

		static auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)
			noexcept
		->	decltype(auto)
		{	return t_vList[i_nIndex];	}

		static auto constexpr
		(	operator()
		)	(	Info const
				&	i_rExchange
			)
			noexcept
		->	decltype(t_vList)
		{	return t_vList(i_rExchange);	}

		friend auto constexpr
		(	operator *
		)	(	Definition
			,	auto
					i_fTransform
			)
			noexcept
		->	decltype(t_vList)
		{
			auto
				vResult
			=	t_vList
			;

			[&]	<	::std::size_t
					...	t_npIndex
				>(	::std::index_sequence<t_npIndex...>
				)
			{	(	...
				,	(	vResult[t_npIndex].Type
					=	(	Meta::RestoreTypeToken<t_vList[t_npIndex].Type>
						+	i_fTransform
						)
					)
				);
			}(	::std::make_index_sequence
				<	t_vList
				.	size()
				>{}
			);

			::std::sort
			(	vResult.begin()
			,	vResult.end().base()
			);
			return vResult;
		}

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
	.	All
	;
}
