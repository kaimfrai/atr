export module Meta.Memory.Size.Scale;

import Meta.Memory.Size;
import Meta.Memory.Count;

import Std;

export namespace
	Meta::Memory
{
	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	operator *=
	)	(	Size<t_nWidth>
			&	i_rSize
		,	typename Size<t_nWidth>::SizeType
				i_vScalar
		)
		noexcept
	->	Size<t_nWidth>&
	{
		(	i_rSize.get()
		*=	i_vScalar
		);
		return
			i_rSize
		;
	}

	[[nodiscard]]
	auto constexpr
	(	operator *
	)	(	BitSize
				i_vSize
		,	typename BitSize::SizeType
				i_vScalar
		)
		noexcept
	->	BitSize
	{	return
		(	i_vSize
		*=	i_vScalar
		);
	}

	[[nodiscard]]
	auto constexpr
	(	operator *
	)	(	typename BitSize::SizeType
				i_vScalar
		,	BitSize
				i_vSize
		)
		noexcept
	->	BitSize
	{	return
		(	i_vSize
		*=	i_vScalar
		);
	}

	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	operator *=
	)	(	Size<t_nWidth>
			&	i_rSize
		,	Bits
				i_vCount
		)
		noexcept
	->	Size<t_nWidth>&
	{
		(	i_rSize.get()
		*=	static_cast<Size<t_nWidth>::SizeType>
			(	i_vCount.get()
			)
		);
		return
			i_rSize
		;
	}

	[[nodiscard]]
	auto constexpr
	(	operator *
	)	(	BitSize
				i_vSize
		,	Bits
				i_vCount
		)
		noexcept
	->	BitSize
	{	return
		(	i_vSize
		*=	i_vCount
		);
	}

	[[nodiscard]]
	auto constexpr
	(	operator *
	)	(	Bits
				i_vCount
		,	BitSize
				i_vSize
		)
		noexcept
	->	BitSize
	{	return
		(	i_vSize
		*=	i_vCount
		);
	}

	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	operator /=
	)	(	Size<t_nWidth>
			&	i_rSize
		,	typename Size<t_nWidth>::SizeType
				i_vScalar
		)
		noexcept
	->	Size<t_nWidth>&
	{
		(	i_rSize.get()
		/=	i_vScalar
		);
		return
			i_rSize
		;
	}

	[[nodiscard]]
	auto constexpr
	(	operator /
	)	(	BitSize
				i_vSize
		,	typename BitSize::SizeType
				i_vScalar
		)
		noexcept
	->	BitSize
	{	return
		(	i_vSize
		/=	i_vScalar
		);
	}

	[[nodiscard]]
	auto constexpr
	(	operator /
	)	(	BitSize
				i_vSize
		,	Bits
				i_vCount
		)
		noexcept
	->	BitSize
	{
		(	i_vSize.get()
		/=	static_cast<BitSize::SizeType>
			(	i_vCount.get()
			)
		);

		return
			i_vSize
		;
	}

	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	operator /=
	)	(	Size<t_nWidth>
			&	i_rSize
		,	Bits
				i_vCount
		)
		noexcept
	->	Size<t_nWidth>&
	{	return
		(	i_rSize
		=	i_rSize
		/	i_vCount
		);
	}

	[[nodiscard]]
	auto constexpr
	(	operator /
	)	(	BitSize
				i_vLeft
		,	BitSize
				i_vRight
		)
		noexcept
	->	BitSize::SizeType
	{	return
		(	i_vLeft.get()
		/	i_vRight.get()
		);
	}
}
