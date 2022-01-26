export module ID.Base;

export import ID.Make;
export import ID.StringLiteral;
export import Std;

export import Meta.Pack;
export import Pack.Map;
export import Pack.Size;
export import Pack.Sequence;
export import Std.Concepts;
export import Meta.Integer;

export import Fold.Comma;;
export import Stateless.Binding;
export import Stateless.Tuple;

export namespace
	ID
{
	/// serves as a base class for all identifer types
	/// provides conversions to arrays as well as begin and end functions
	/// makes sure the sequence ends with \0
	template
		<	template
				<	typename
						t_tNestedChar
				,	t_tNestedChar
					...
				>
			typename
				t_t1Derived
		,	Std::Integral
				t_tChar
		,	t_tChar
			...	t_vpString
		>
	struct
		Base
	:	Pack::Sequence
		<	t_tChar
		,	t_vpString
			...
		,	//	terminating null character
			t_tChar
			{}
		>
	{
		/// the sequence of characters without trailing \0
		static
		constexpr
		Pack::SequenceInstance auto
			CharacterSequence
		=	Meta::Pack
			<	t_vpString
				...
			>()
		;

		static constexpr
		StringLiteral
		<	t_tChar
			[	sizeof...(
					t_vpString
				)
			+	1uz
			]
		>	AsStringLiteral
		{	t_vpString
			...
		,	t_tChar
			{}
		};

		constexpr
			operator
			StringLiteral
			<	t_tChar
				[	sizeof...(
						t_vpString
					)
				+	1uz
				]
			> const&
			()	const
		{	return
				AsStringLiteral
			;
		}

		/// checks if the identifer starts with the given string
		template
			<	StringLiteral
					t_vStartString
			>
		static
		constexpr
		auto
			StartsWith
			()
		->	bool
		{	return
				Pack::StartsWith
				(	CharacterSequence
				,	MakeV
					<	Pack::Sequence
					,	t_vStartString
					>
				)
			;
		}

		/// checks if the identifer ends with the given string
		template
			<	StringLiteral
					t_vStartString
			>
		static
		constexpr
		auto
			EndsWith
				()
		->	bool
		{	return
				Pack::EndsWith
				(	CharacterSequence
				,	MakeV
					<	Pack::Sequence
					,	t_vStartString
					>
				)
			;
		}
	};


}

static_assert
	(	ID::Base<Pack::Sequence, char, 'a', 'b', 'c'>
		::	template
			StartsWith<"ab">
			()
	)
;

static_assert
	(	ID::Base<Pack::Sequence, char, 'a', 'b', 'c'>
		::	template
			EndsWith<"bc">
			()
	)
;
