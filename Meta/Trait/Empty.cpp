export module Meta.Trait.Empty;

import Meta.Token.Type;
import Meta.Trait.BitSize;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size;

export namespace
	Meta::Trait
{
	struct
		Empty
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
					i_vType
			)
			noexcept
		->	bool
		{	return
				::Meta::BitSize_Of
				(	i_vType
				)
			==	0_bit
			;
		}
	};
}
