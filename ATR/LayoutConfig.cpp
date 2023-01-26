export module ATR.LayoutConfig;

import ATR.MemberList;
import ATR.DataMember;

import Meta.ID.Alias;
import Meta.ID.StringLiteral;
import Meta.Predicate.Stateless;
import Meta.Token.Type;
import Meta.Size;

import Std;

using ::Meta::USize;

export namespace
	ATR
{
	template
		<	MemberList
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
			,	MemberList<t_nRight> const
				&	i_rRight
			)
			noexcept
		->	decltype(auto)
		{	return t_vList + i_rRight;	}

		friend auto constexpr
		(	operator *
		)	(	DefineMembers
			,	Meta::ProtoStateless auto
					i_fTransform
			)
			noexcept
		->	decltype(t_vList)
		{
			auto
				vList
			=	[]	<	::std::size_t
						...	t_npIndex
					>(	::std::index_sequence<t_npIndex...>
					)
				{	return
					decltype(t_vList)
					{	MemberInstance
						<	Meta::ID_Of<t_vList[t_npIndex].Name>
						,	(	Meta::RestoreTypeToken<t_vList[t_npIndex].Type>
							+	decltype(i_fTransform){}
							)
						,	t_vList[t_npIndex].SortKey
						>
						...
					};
				}(	::std::make_index_sequence
					<	t_vList
					.	size()
					>{}
				)
			;

			::std::sort(vList.begin(), vList.end().base());
			return vList;
		}

		template
			<	USize
					t_nRight
			>
		friend auto constexpr
		(	operator -
		)	(	DefineMembers
			,	MemberList<t_nRight> const
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
			<	MemberList
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
	<	MemberList<0uz>{}
	>	const extern
		LayoutConfig
	;
}
