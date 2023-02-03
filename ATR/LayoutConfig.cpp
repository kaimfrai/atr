export module ATR.LayoutConfig;

import ATR.Member.List;
import ATR.DataMember;

import Meta.ID.Alias;
import Meta.ID.StringLiteral;
import Meta.Token.Type;
import Meta.Size;

import Std;

using ::Meta::USize;
using ::ATR::Member::List;

export namespace
	ATR
{
	template
		<	List
				t_vList
		>
	struct
		DefineMembers final
	{
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
		)	(	MemberInfo const
				&	i_rExchange
			)
			noexcept
		->	decltype(t_vList)
		{	return t_vList(i_rExchange);	}

		template
			<	USize
					t_nRight
			>
		friend auto constexpr
		(	operator +
		)	(	DefineMembers
			,	List<t_nRight> const
				&	i_rRight
			)
			noexcept
		->	decltype(auto)
		{	return t_vList + i_rRight;	}

		friend auto constexpr
		(	operator *
		)	(	DefineMembers
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

		template
			<	USize
					t_nRight
			>
		friend auto constexpr
		(	operator -
		)	(	DefineMembers
			,	List<t_nRight> const
				&	i_rRight
			)
			noexcept
		->	decltype(auto)
		{	return t_vList - i_rRight;	}


		friend auto constexpr
		(	operator ==
		)	(	DefineMembers
			,	DefineMembers
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
		)	(	DefineMembers
			,	DefineMembers<t_vRightList>
			)
			noexcept
		->	bool
		{	return false;	}
	};

	/// maps a string literal to a Layout
	template
		<	Meta::StringLiteral
		>
	DefineMembers
	<	List<0uz>{}
	>	const extern
		LayoutConfig
	;
}
