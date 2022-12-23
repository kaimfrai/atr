export module Meta.Bit.IndexView;

import Meta.Bit.Iterator;
import Meta.Size;

export namespace
	Meta::Bit
{
	struct
		IndexView
	{
		USize
			Field
		;

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	const
			noexcept
		->	IndexIterator
		{	return { Field };	}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	const
			noexcept
		->	Sentinel
		{	return {};	}
	};
}
