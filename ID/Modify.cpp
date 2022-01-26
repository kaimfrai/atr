export module ID.Modify;

export import ID.Base;
export import ID.Make;
export import ID.StringLiteral;

export import Pack.Reverse;
export import Std.Concepts;

export namespace
	ID
{
	template
		<	char
			...	t_vpString
		>
	struct
		Trim
	{
		template
			<	template
					<	char
						...
					>
				typename
					t_t1Identifier
			,	char
				...	t_vpBack
			>
		[[nodiscard]]
		friend auto constexpr
			operator-
			(	Trim
			,	t_t1Identifier
				<	t_vpString
					...
				,	t_vpBack
					...
				>
			)
		{	return
				t_t1Identifier
				<	t_vpBack
					...
				>{}
			;
		}

		[[nodiscard]]
		friend auto constexpr
			operator-
			(	Pack::ValueInstance auto
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
	auto constexpr
		operator
		""_trim
		()
	->	MakeT
		<	Trim
		,	t_vString
		>
	{	return{};	}

	template
		<	char
			...	t_vpString
		>
	struct
		Extend
	{
		template
			<	template
					<	char
						...
					>
				typename
					t_t1Identifier
			,	char
				...	t_vpBack
			>
		[[nodiscard]]
		friend auto constexpr
			operator+
			(	Extend
			,	t_t1Identifier
				<	t_vpBack
					...
				>
			)
		{	return
				t_t1Identifier
				<	t_vpString
					...
				,	t_vpBack
					...
				>{}
			;
		}

		template
			<	template
					<	char
						...
					>
				typename
					t_t1Identifier
			,	char
				...	t_vpFront
			>
		[[nodiscard]]
		friend auto constexpr
			operator+
			(	t_t1Identifier
				<	t_vpFront
					...
				>
			,	Extend
			)
		{	return
				t_t1Identifier
				<	t_vpFront
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
	auto constexpr
		operator
		""_extend
		()
	->	MakeT
		<	Extend
		,	t_vString
		>
	{	return{};	}
}

// static_assert
// 	(	"ab"_extend
// 	+	Meta::Pack<'c'>()
// 	==	Meta::Pack<'a', 'b', 'c'>()
// 	)
// ;
// static_assert
// 	(	"ab"_trim
// 	-	Meta::Pack<'a', 'b', 'c'>()
// 	==	Meta::Pack<'c'>()
// 	)
// ;
// static_assert
// 	(	Meta::Pack<'a'>()
// 	+	"bc"_extend
// 	==	Meta::Pack<'a', 'b', 'c'>()
// 	)
// ;
// static_assert
// 	(	Meta::Pack<'a', 'b', 'c'>()
// 	-	"bc"_trim
// 	==	Meta::Pack<'a'>()
// 	)
// ;
