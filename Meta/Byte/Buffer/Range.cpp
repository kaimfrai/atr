export module Meta.Byte.Buffer.Range;

import Meta.Memory.Size.PointerArithmetic;
import Meta.Byte.Buffer;

import Std;

export namespace
	Meta::Byte
{
	template
		<	auto
				t_nSize
		>
	[[nodiscard]]
	auto constexpr inline
	(	begin
	)	(	Buffer<t_nSize>
			&	i_rBuffer
		)
		noexcept
	->	decltype(auto)
	{	return
			+
			i_rBuffer
		;
	}

	template
		<	auto
				t_nSize
		>
	[[nodiscard]]
	auto constexpr inline
	(	begin
	)	(	Buffer<t_nSize> const
			&	i_rBuffer
		)
		noexcept
	->	decltype(auto)
	{	return
			+
			i_rBuffer
		;
	}

	template
		<	auto
				t_nSize
		>
	[[nodiscard]]
	auto constexpr inline
	(	end
	)	(	Buffer<t_nSize>
			&	i_rBuffer
		)
		noexcept
	->	decltype(auto)
	{	return
			+
			i_rBuffer
		+	t_nSize
		;
	}

	template
		<	auto
				t_nSize
		>
	[[nodiscard]]
	auto constexpr inline
	(	end
	)	(	Buffer<t_nSize> const
			&	i_rBuffer
		)
		noexcept
	->	decltype(auto)
	{	return
			+
			i_rBuffer
		+	t_nSize
		;
	}
}
