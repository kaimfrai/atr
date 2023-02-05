export module Meta.ID.Concatenate;

import Meta.ID.Concept;
import Meta.ID.Alias;
import Meta.ID.StringView;
import Meta.ID.StringLiteral;

import Meta.Size;

import Std;

using ::Meta::USize;

export namespace
	Meta
{
	template
		<	USize
				t_nSize
		>
	[[nodiscard]]
	auto constexpr
	(	Concatenate
	)	(	::std::span<StringView const>
				i_vStringViews
		)
		noexcept
	->	StringLiteral<t_nSize>
	{
		StringLiteral<t_nSize>
			vResult
		;

		for	(	auto
					vInsertPosition
				=	vResult.begin()
			;	auto
					vStringView
			:	i_vStringViews
			)
		{
			(	vInsertPosition
			=	::std::copy
				(	begin(vStringView)
				,	end(vStringView)
				,	vInsertPosition
				)
			);
		}

		return
			vResult
		;
	}

	template
		<	USize
				t_nSize
		>
	[[nodiscard]]
	auto constexpr
	(	Concatenate
	)	(	StringLiteral<t_nSize> const
			&	i_rLeft
		,	char
				i_nRight
		)
		noexcept
	->	StringLiteral<t_nSize + 1uz>
	{
		StringLiteral<t_nSize + 1uz>
			vResult
		;
		if	constexpr
			(	t_nSize
			>	0uz
			)
		{	::std::copy
			(	i_rLeft.begin()
			,	i_rLeft.end().base()
			,	vResult.begin()
			);
		}

		(	vResult[t_nSize]
		=	i_nRight
		);

		return
			vResult
		;
	}

	[[nodiscard]]
	auto constexpr
	(	Concatenate
	)	(	ProtoID auto
			...	i_vPrefix
		)
		noexcept
	->	ID_T
		<	::Meta::Concatenate
			<	(	...
				+	i_vPrefix.Length
				)
			>(	::std::array
				{	i_vPrefix.StringView
					...
				}
			)
		>
	{	return {};	}
}
