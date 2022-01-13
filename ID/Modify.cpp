export module ID.Modify;

export import ID.Base;
export import ID.Make;
export import ID.StringLiteral;

export import <Pack/Reverse.hpp>;
export import <Std/Concepts.hpp>;

export namespace
	ID
{
	template
		<	Std::Integral
				t_tChar
		,	t_tChar
			...	t_vpString
		>
	struct
		Trim
	{
		template
			<	template
					<	typename
							t_tNested
					,	t_tNested
						...
					>
				typename
					t_t1Identifier
			,	t_tChar
				...	t_vpBack
			>
		[[nodiscard]]
		friend
		constexpr
		auto
			operator-
			(	Trim
			,	t_t1Identifier
				<	t_tChar
				,	t_vpString
					...
				,	t_vpBack
					...
				>
			)
		{	return
				t_t1Identifier
				<	t_tChar
				,	t_vpBack
					...
				>{}
			;
		}

		[[nodiscard]]
		friend
		constexpr
		auto
			operator-
			(	Pack::SequenceInstance auto
					i_vIdentifier
			,	Trim
					i_vTrim
			)
		{	/// deduction only possible from the front of the pack
			return
				Pack::Reverse
				(	Pack::Reverse
					(	i_vTrim
					)
				-	Pack::Reverse
					(	i_vIdentifier
					)
				)
			;
		}
	};

	template
		<	StringLiteral
				t_vString
		>
	[[nodiscard]]
	constexpr
	auto
		operator
		""_trim
		()
	->	MakeT
		<	Trim
		,	t_vString
		>
	{	return{};	}

	template
		<	Std::Integral
				t_tChar
		,	t_tChar
			...	t_vpString
		>
	struct
		Extend
	{
		template
			<	template
					<	typename
							t_tNested
					,	t_tNested
						...
					>
				typename
					t_t1Identifier
			,	t_tChar
				...	t_vpBack
			>
		[[nodiscard]]
		friend
		constexpr
		auto
			operator+
			(	Extend
			,	t_t1Identifier
				<	t_tChar
				,	t_vpBack
					...
				>
			)
		{	return
				t_t1Identifier
				<	t_tChar
				,	t_vpString
					...
				,	t_vpBack
					...
				>{}
			;
		}

		template
			<	template
					<	typename
							t_tNested
					,	t_tNested
						...
					>
				typename
					t_t1Identifier
			,	t_tChar
				...	t_vpFront
			>
		[[nodiscard]]
		friend
		constexpr
		auto
			operator+
			(	t_t1Identifier
				<	t_tChar
				,	t_vpFront
					...
				>
			,	Extend
			)
		{	return
				t_t1Identifier
				<	t_tChar
				,	t_vpFront
					...
				,	t_vpString
					...
				>{}
			;
		}
	};

	template
		<	StringLiteral
				t_vString
		>
	[[nodiscard]]
	constexpr
	auto
		operator
		""_extend
		()
	->	MakeT
		<	Extend
		,	t_vString
		>
	{	return{};	}
}

using ID::operator""_extend;
using ID::operator""_trim;

static_assert
	(	"ab"_extend
	+	Meta::Pack<'c'>()
	==	Meta::Pack<'a', 'b', 'c'>()
	)
;
static_assert
	(	"ab"_trim
	-	Meta::Pack<'a', 'b', 'c'>()
	==	Meta::Pack<'c'>()
	)
;
static_assert
	(	Meta::Pack<'a'>()
	+	"bc"_extend
	==	Meta::Pack<'a', 'b', 'c'>()
	)
;
static_assert
	(	Meta::Pack<'a', 'b', 'c'>()
	-	"bc"_trim
	==	Meta::Pack<'a'>()
	)
;
