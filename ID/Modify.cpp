export module ID.Modify;

export import ID.Make;
export import ID.StringLiteral;

export import Pack.Reverse;
export import Std.Concepts;

export namespace
	ID
{
	template
		<	char const
			&
			...	t_rpString
		>
	struct
		Trim
	{
		template
			<	template
					<	char const
						&
						...
					>
				typename
					t_t1Identifier
			,	char const
				&
				...	t_rpBack
			>
		[[nodiscard]]
		friend auto constexpr
			operator-
			(	Trim
			,	t_t1Identifier
				<	t_rpString
					...
				,	t_rpBack
					...
				>
			)
		{	return
				t_t1Identifier
				<	t_rpBack
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
		<	char const
			&
			...	t_rpString
		>
	struct
		Extend
	{
		template
			<	template
					<	char const
						&
						...
					>
				typename
					t_t1Identifier
			,	char const
				&
				...	t_rpBack
			>
		[[nodiscard]]
		friend auto constexpr
			operator+
			(	Extend
			,	t_t1Identifier
				<	t_rpBack
					...
				>
			)
		{	return
				t_t1Identifier
				<	t_rpString
					...
				,	t_rpBack
					...
				>{}
			;
		}

		template
			<	template
					<	char const
						&
						...
					>
				typename
					t_t1Identifier
			,	char const
				&
				...	t_rpFront
			>
		[[nodiscard]]
		friend auto constexpr
			operator+
			(	t_t1Identifier
				<	t_rpFront
					...
				>
			,	Extend
			)
		{	return
				t_t1Identifier
				<	t_rpFront
					...
				,	t_rpString
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
