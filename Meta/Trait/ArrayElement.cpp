export module Meta.Trait.ArrayElement;

import Meta.Token.Specifier;
import Meta.Token.Type;

export namespace
	Meta::Trait
{
	struct
		ArrayElement_Of
	{
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeID
			)
			noexcept
		->	TypeToken<void>
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity[]>
			)
			noexcept
		->	TypeToken
			<	t_tEntity
			>
		{	return {};	}

		template
			<	typename
					t_tEntity
			,	auto
					t_nExtent
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity[t_nExtent]>
			)
			noexcept
		->	TypeToken
			<	t_tEntity
			>
		{	return {};	}

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
	Trait::ArrayElement_Of const extern
		ArrayElement_Of
	;
}
