export module Meta.Bit.Field;

import Meta.Size;

export namespace
	Meta::Bit
{
	struct
		Field
	{
		USize
			Value
		;

		[[nodiscard]]
		friend auto constexpr
		(	operator bitor
		)	(	Field
					i_vLeft
			,	Field
					i_vRight
			)
			noexcept
		->	Field
		{	return
			{	i_vLeft.Value
			bitor
				i_vRight.Value
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator ==
		)	(	Field
			,	Field
			)
			noexcept
		->	bool
		=	default;
	};
}
