export module Meta.Byte.Buffer.Range;

import Meta.Memory.Size;
import Meta.Byte.Buffer;

import Std;

export namespace
	Meta::Byte
{
	template
		<	ByteSize
				t_nSize
		>
	[[nodiscard]]
	auto constexpr
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
		<	ByteSize
				t_nSize
		>
	[[nodiscard]]
	auto constexpr
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
		<	ByteSize
				t_nSize
		>
	[[nodiscard]]
	auto constexpr
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
		<	ByteSize
				t_nSize
		>
	[[nodiscard]]
	auto constexpr
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
