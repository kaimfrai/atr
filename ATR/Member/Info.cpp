export module ATR.Member.Info;

import Meta.Memory.Alignment;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Compare;
import Meta.Token.TypeID;
import Meta.Token.Type.Compare;
import Meta.ID.StringView;

import Std;

using ::Meta::StringView;
using ::Meta::TypeID;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	struct
		Info final
	{
		TypeID Type;
		StringView Name;

		[[nodiscard]]
		friend
		auto constexpr
		(	operator
			==
		)	(	Info const
				&	i_rLeft
			,	Info const
				&	i_rRight
			)
			noexcept
		->	bool
		=	default;

		[[nodiscard]]
		friend auto constexpr
		(	operator
			<=>
		)	(	Info const
				&	i_rLeft
			,	Info const
				&	i_rRight
			)
			noexcept
		->	::std::strong_ordering
		{
			if	(	auto const
						vCompareAlign
					=	-
						i_rLeft.Type.GetAlign().Value
					<=>	-
						i_rRight.Type.GetAlign().Value
				;	not
					::std::is_eq
					(	vCompareAlign
					)
				)
			{	return
					vCompareAlign
				;
			}

			return
				i_rLeft.Name
			<=>	i_rRight.Name
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	IsDynamic
		)	(	Info const
				&	i_rInfo
			)
			noexcept
		->	bool
		{	return
				i_rInfo.Type.GetAlign()
			!=	0_align
			;
		}
	};

	struct
		AliasInfo
	{
		StringView
			Name
		;
		StringView
			Target
		;

		[[nodiscard]]
		friend auto constexpr
		(	operator <=>
		)	(	AliasInfo const&
			,	AliasInfo const&
			)
			noexcept
		=	default;
	};
}
