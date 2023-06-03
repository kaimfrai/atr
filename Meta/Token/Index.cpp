export module Meta.Token.Index;

import Meta.Math.Next;
import Meta.Math.Prev;
import Meta.Arithmetic.Literals;

using ::Meta::Math::Next;
using ::Meta::Math::Prev;

export namespace
	Meta::Token
{
	template
		<	auto
			...	t_npIndex
		>
	struct
		Index
	{
		[[nodiscard]]
		explicit(sizeof...(t_npIndex) != 1uz) constexpr inline
		(	operator
			auto
		)	()	const
			noexcept
		{	if	constexpr(sizeof...(t_npIndex) == 1uz)
				return (..., t_npIndex);
		}

		template
			<	auto
					t_nAssign
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator=
		)	(	Index<t_nAssign>
			)	const
			noexcept
		->	Index
			<	(	(void)t_npIndex
				,	t_nAssign
				)
				...
			>
		{	return {};	}

		template
			<	auto
					t_nAdd
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator+=
		)	(	Index<t_nAdd>
			)	const
			noexcept
		->	Index
			<	(	t_npIndex
				+	t_nAdd
				)
				...
			>
		{	return {};	}

		template
			<	auto
				...	t_npSuffix
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator|
		)	(	Index
			,	Index<t_npSuffix...>
			)
			noexcept
		->	Index
			<	t_npIndex
				...
			,	t_npSuffix
				...
			>
		{	return {};	}

		[[nodiscard]]
		auto constexpr inline
		(	operator++
		)	()	const
			noexcept
		->	Index
			<	Next
				(	t_npIndex
				)
				...
			>
		{	return	{};	}

		[[nodiscard]]
		auto constexpr inline
		(	operator--
		)	()	const
			noexcept
		->	Index
			<	Prev
				(	t_npIndex
				)
				...
			>
		{	return	{};	}

		template
			<	typename
					t_tCast
			>
		[[nodiscard]]
		auto static constexpr inline
		(	CastAll
		)	()
			noexcept
		->	Index
			<	static_cast<t_tCast>
				(	t_npIndex
				)
				...
			>
		{	return
			{};
		}
	};
}

export namespace
	Meta
{
	template
		<	auto
			...	t_npIndex
		>
	using
		IndexToken
	=	Token::Index
		<	t_npIndex
			...
		>
	;

	template
		<	auto
			...	t_npIndex
		>
	auto constexpr inline
		Index
	=	IndexToken
		<	t_npIndex
			...
		>{}
	;
}

export namespace
	Meta::inline Literals
{
	template
		<	char
			...	t_nNumeric
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator""_idx
	)	()
		noexcept
	->	IndexToken
		<	EvaluateNumericLiteral
			<	t_nNumeric
				...
			>()
		>
	{	return {};	}
}
