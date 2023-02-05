export module ATR.Member.View;

import ATR.Member.Info;
import ATR.Member.List;
import ATR.Member.Alias;

import Std;

export namespace
	ATR::Member
{
	struct
		DataView
	{
		::std::span<Info const>
			DataInfos
		;

		using
			size_type
		=	typename
				::std::span<Info const>
			::	size_type
		;

		size_type
			DynamicCount
		;

		template
			<	auto
					t_nDataCount
			>
		explicit(false) constexpr
		(	DataView
		)	(	List<t_nDataCount> const
				&	i_rList
			)
			noexcept
		:	DataInfos
			{	i_rList.get()
			}
		,	DynamicCount
			{	static_cast<size_type>
				(	i_rList.DynamicSize
				)
			}
		{}

		[[nodiscard]]
		friend auto constexpr
		(	DynamicView
		)	(	DataView
					i_vView
			)
			noexcept
		->	DataView
		{
			(	i_vView.DataInfos
			=	i_vView.DataInfos
			.	subspan
				(	0uz
				,	i_vView.DynamicCount
				)
			);
			return
				i_vView
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	StaticView
		)	(	DataView
					i_vView
			)
			noexcept
		->	DataView
		{
			(	i_vView.DataInfos
			=	i_vView.DataInfos
			.	subspan
				(	i_vView.DynamicCount
				)
			);
			(	i_vView.DynamicCount
			=	size_type{}
			);
			return
				i_vView
			;
		}

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	const
			noexcept
		{	return
				DataInfos
			.	begin()
			;
		}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	const
			noexcept
		{	return
			DataInfos
			.	end()
			;
		}
	};

	struct
		AliasView
	{
		::std::span<AliasInfo const>
			AliasInfos
		;
		DataView
			DataInfos
		;

		template
			<	auto
					t_nAliasCount
			,	auto
					t_nDataCount
			>
		explicit(false) constexpr
		(	AliasView
		)	(	AliasedList<t_nAliasCount, t_nDataCount> const
				&	i_rList
			)
			noexcept
		:	AliasInfos
			{	i_rList.AliasInfos
			}
		,	DataInfos
			{	i_rList.DataInfos
			}
		{}

		[[nodiscard]]
		friend auto constexpr
		(	DynamicView
		)	(	AliasView
					i_vView
			)
			noexcept
		->	AliasView
		{
			(	i_vView.DataInfos
			=	DynamicView
				(	i_vView.DataInfos
				)
			);
			return
				i_vView
			;
		}

		[[nodiscard]]
		friend auto constexpr
		(	StaticView
		)	(	AliasView
					i_vView
			)
			noexcept
		->	AliasView
		{
			(	i_vView.DataInfos
			=	StaticView
				(	i_vView.DataInfos
				)
			);
			return
				i_vView
			;
		}
	};
}
