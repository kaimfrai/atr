export module Meta.ID.Concatenate;

export import Meta.ID.StringView;
export import Meta.ID.StringLiteral;

import Meta.Size;

export import Std;

export namespace
	Meta
{
	template
		<	Meta::USize
				t_nSize
		>
	auto constexpr
	(	Concatenate
	)	(	std::span<StringView const>
				i_vStringViews
		)
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
		<	Meta::USize
				t_nSize
		>
	auto constexpr
	(	Concatenate
	)	(	StringLiteral<t_nSize> const
			&	i_rLeft
		,	char
				i_nRight
		)
	->	StringLiteral<t_nSize + 1uz>
	{
		StringLiteral<t_nSize + 1uz>
			vResult
		;
		if constexpr(t_nSize > 0uz)
			std::copy(i_rLeft.begin(), i_rLeft.end().base(), vResult.begin());
		vResult[t_nSize] = i_nRight;
		return vResult;
	}
}
