export module Evaluation.CRTP.ExtendedShape;

export import Evaluation.CRTP.BasicBody;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tBody
		,	typename
				t_tShape
		>
	struct
		ExtendedShape
	:	BasicBody
		<	t_tBody
		>
	{
		t_tShape
			Shapes2D
		;

		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		{
			return
				Shapes2D
				.	GetHeight
					()
			;
		}

		auto
			GetWidth
			()	const
		noexcept
		->	Float const
			&
		{
			return
				Shapes2D
				.	GetWidth
					()
			;
		}
	};
}
