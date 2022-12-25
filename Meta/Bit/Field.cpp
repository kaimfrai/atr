export module Meta.Bit.Field;

import Meta.Bit.Count;
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
		(	operator compl
		)	(	Field
					i_vField
			)
			noexcept
		->	Field
		{	return
			{	compl
				i_vField.Value
			};
		}

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
		(	operator bitand
		)	(	Field
					i_vLeft
			,	Field
					i_vRight
			)
			noexcept
		->	Field
		{	return
			{	i_vLeft.Value
			bitand
				i_vRight.Value
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator <<
		)	(	Field
					i_vField
			,	Bits
					i_vShift
			)
			noexcept
		->	Field
		{	return
			{	i_vField.Value
			<<	i_vShift.get()
			};
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator >>
		)	(	Field
					i_vField
			,	Bits
					i_vShift
			)
			noexcept
		->	Field
		{	return
			{	i_vField.Value
			>>	i_vShift.get()
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
