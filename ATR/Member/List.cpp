export module ATR.Member.List;

import ATR.Member.Info;

import Meta.ID.StringLiteral;
import Meta.ID.Alias;
import Meta.Token.Type;
import Meta.Size;

import Std;

using ::Meta::USize;
using ::Meta::SSize;
using ::Meta::StringLiteral;
using ::Meta::ID_T;
using ::Meta::Type;

export namespace
	ATR::Member
{
	template
		<	USize
				t_nDataCount
		>
	struct
		List
	{
		[[no_unique_address]]
		::std::array<Info, t_nDataCount>
			DataInfos
		;
		SSize
			DynamicSize
		;

		[[nodiscard]]
		static auto constexpr
		(	size
		)	()
			noexcept
		->	USize
		{	return t_nDataCount;	}

		[[nodiscard]]
		auto constexpr
		(	operator []
		)	(	USize
					i_nIndex
			)	&
			noexcept
		->	Info&
		{	return
			DataInfos
			[	i_nIndex
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator []
		)	(	USize
					i_nIndex
			)	const&
			noexcept
		->	Info const&
		{	return
			DataInfos
			[	i_nIndex
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator []
		)	(	USize
					i_nIndex
			)	&&
			noexcept
		->	Info
		{	return
			DataInfos
			[	i_nIndex
			];
		}

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	&
			noexcept
		{	return DataInfos.begin();	}

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	const&
			noexcept
		{	return DataInfos.begin();	}

		auto begin() && = delete;

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	&
			noexcept
		{	return DataInfos.end();	}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	const&
			noexcept
		{	return DataInfos.end();	}

		auto end() && = delete;
	};

	template
		<	USize
				t_nDataCount
		>
	(	List
	)	(	List<t_nDataCount>
		)
	->	List
		<	t_nDataCount
		>
	;

	template
		<	StringLiteral
				t_vName
		,	typename
				t_tValue
		>
	Info constexpr inline
		New
	{	Type<t_tValue>
	,	ID_T<t_vName>::StringView
	};
}
