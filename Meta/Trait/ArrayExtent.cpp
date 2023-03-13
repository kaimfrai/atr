export module Meta.Trait.ArrayExtent;

import Meta.Token.Specifier;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Meta.Size;

export namespace
	Meta::Trait
{
	struct
		ArrayExtent_Of
	{
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeID
			)
			noexcept
		->	USize
		{	return 0uz;	}

		template
			<	typename
					t_tEntity
			,	USize
					t_nExtent
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity[t_nExtent]>
			)
			noexcept
		->	USize
		{	return t_nExtent;	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mut<t_tEntity>>
			)
			noexcept
		->	decltype(auto)
		{	return
			operator()
			(	Type<t_tEntity>
			);
		}
	};
}

export namespace
	Meta
{
	Trait::ArrayExtent_Of const extern
		ArrayExtent_Of
	;
}
