export module Meta.ID:Concatenate;

export import :StringView;
export import :StringLiteral;

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
				=	begin(vResult)
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
}
