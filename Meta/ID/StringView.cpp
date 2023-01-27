export module Meta.ID.StringView;

import Meta.Size;

import Meta.Buffer.Iterator;

import Std;

export namespace
	Meta
{
	struct
		StringView final
	{
		using iterator = Buffer::Iterator<char const>;
		using const_iterator = iterator;

		char const
		*	Data
		;

		USize
			Size
		;

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	const
			noexcept
		->	char const&
		{	return iterator{Data}[i_nIndex];	}

		[[nodiscard]]
		auto constexpr
		(	empty
		)	()	const
			noexcept
		->	bool
		{	return size() == 0uz;	}

		[[nodiscard]]
		explicit(true) constexpr
		(	operator bool
		)	()	const
			noexcept
		{	return not empty();	}

		[[nodiscard]]
		auto constexpr
		(	data
		)	()	const
			noexcept
		->	char const*
		{	return Data;	}

		[[nodiscard]]
		auto constexpr
		(	size
		)	()	const
			noexcept
		->	USize
		{	return Size;	}

		[[nodiscard]]
		auto constexpr
		(	ssize
		)	()	const
			noexcept
		->	SSize
		{	return static_cast<SSize>(size());	}

		[[nodiscard]]
		friend auto constexpr
		(	begin
		)	(	StringView
					i_vView
			)
			noexcept
		->	iterator
		{	return iterator{i_vView.Data};	}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	StringView
					i_vView
			)
			noexcept
		->	iterator
		{	return iterator{i_vView.Data} + i_vView.ssize();	}
	};

	///	Namespace scope allows making use of implicit conversions.
	///	This allows for template argument erasure.
	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	StringView
				i_vLeft
		,	StringView
				i_vRight
		)
		noexcept
	->	bool
	{	return
		(	i_vLeft.Data
		==	i_vRight.Data
		);
	}

	///	Namespace scope allows making use of implicit conversions.
	///	This allows for template argument erasure.
	[[nodiscard]]
	auto constexpr
	(	operator <=>
	)	(	StringView
				i_vLeft
		,	StringView
				i_vRight
		)
		noexcept
	->	::std::strong_ordering
	{	return
		::std::lexicographical_compare_three_way
		(	begin(i_vLeft)
		,	end(i_vLeft)
		,	begin(i_vRight)
		,	end(i_vRight)
		);
	}

	namespace
		String
	{
		template
			<	char
					t_cChar
			>
		auto constexpr inline
			Char
		=	t_cChar
		;
	}

	template
		<	char
				t_cChar
		>
	StringView constexpr inline
		SingleView
	=	StringView
		{	&String::Char<t_cChar>
		,	1uz
		}
	;
}
