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
			...	t_vpIndex
		>
	struct
		Index
	{
		[[nodiscard]]
		explicit(sizeof...(t_vpIndex) != 1uz) constexpr inline
		(	operator
			auto
		)	()	const
			noexcept
		{	if	constexpr(sizeof...(t_vpIndex) == 1uz)
				return (..., t_vpIndex);
		}

		template
			<	auto
					t_vAssign
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator=
		)	(	Index<t_vAssign>
			)	const
			noexcept
		->	Index
			<	(	(void)t_vpIndex
				,	t_vAssign
				)
				...
			>
		{	return {};	}

		template
			<	auto
					t_vAdd
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator+=
		)	(	Index<t_vAdd>
			)	const
			noexcept
		->	Index
			<	(	t_vpIndex
				+	t_vAdd
				)
				...
			>
		{	return {};	}

		template
			<	auto
				...	t_vpSuffix
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator|
		)	(	Index
			,	Index<t_vpSuffix...>
			)
			noexcept
		->	Index
			<	t_vpIndex
				...
			,	t_vpSuffix
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
				(	t_vpIndex
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
				(	t_vpIndex
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
				(	t_vpIndex
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
			...	t_vpIndex
		>
	using
		IndexToken
	=	Token::Index
		<	t_vpIndex
			...
		>
	;

	template
		<	auto
			...	t_vpIndex
		>
	auto constexpr inline
		Index
	=	IndexToken
		<	t_vpIndex
			...
		>{}
	;
}

export namespace
	Meta::inline Literals
{
	template
		<	char
			...	t_vNumeric
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator""_idx
	)	()
		noexcept
	->	IndexToken
		<	EvaluateNumericLiteral
			<	t_vNumeric
				...
			>()
		>
	{	return {};	}
}
