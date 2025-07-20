export module Meta.Byte.Buffer.Range;

import Meta.Memory.Size.PointerArithmetic;
import Meta.Byte.Buffer;

import std;

export namespace
	Meta::Byte
{
	template
		<	auto
				t_vSize
		>
	[[nodiscard]]
	auto constexpr inline
	(	begin
	)	(	Buffer<t_vSize>
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
				t_vSize
		>
	[[nodiscard]]
	auto constexpr inline
	(	begin
	)	(	Buffer<t_vSize> const
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
				t_vSize
		>
	[[nodiscard]]
	auto constexpr inline
	(	end
	)	(	Buffer<t_vSize>
			&	i_rBuffer
		)
		noexcept
	->	decltype(auto)
	{	return
			+
			i_rBuffer
		+	t_vSize
		;
	}

	template
		<	auto
				t_vSize
		>
	[[nodiscard]]
	auto constexpr inline
	(	end
	)	(	Buffer<t_vSize> const
			&	i_rBuffer
		)
		noexcept
	->	decltype(auto)
	{	return
			+
			i_rBuffer
		+	t_vSize
		;
	}
}
