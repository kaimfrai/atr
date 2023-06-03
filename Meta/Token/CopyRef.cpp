export module Meta.Token.CopyRef;

import Meta.Token.Type;
import Meta.Token.Transform.AddCopyReference;
import Meta.Token.Transform.RemoveCopyReference;

using ::Meta::AddCopyReference;
using ::Meta::RemoveCopyReference;

export namespace
	Meta::Token
{
	struct
		CopyRef
	:	TypeToken<CopyRef>
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	TypeToken<t_tEntity>
					i_vType
			,	CopyRef
			)
			noexcept
		->	decltype(AddCopyReference(i_vType))
		{	return{};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator-
		)	(	TypeToken<t_tEntity>
					i_vType
			,	CopyRef
			)
			noexcept
		->	decltype(RemoveCopyReference(i_vType))
		{	return{};	}
	};
}

export namespace
	Meta
{
	Token::CopyRef const extern
		CopyRef
	;
}
