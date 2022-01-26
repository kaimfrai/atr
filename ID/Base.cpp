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
				<	char
					...
				>
			typename
				t_t1Derived
		,	char
			...	t_vpString
		>
	struct
		Base
	:	Pack::Value
		<	t_vpString
			...
		,	//	terminating null character
			'\0'
		>
	{
		/// the sequence of characters without trailing \0
		static Pack::SequenceInstance auto constexpr
			CharacterSequence
		=	Meta::Pack
			<	t_vpString
				...
			>()
		;

		static char constexpr
			RawArray
			[]
		{	t_vpString
			...
		,	'\0'
		};

		static StringLiteral constexpr
			AsStringLiteral
		{	RawArray
		};

		constexpr
			operator
			StringLiteral
			<	char
				[	sizeof...(
						t_vpString
					)
				+	1uz
				]
			>
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
		static auto constexpr
			StartsWith
			()
		->	bool
		{	return
				Pack::StartsWith
				(	CharacterSequence
				,	MakeV
					<	Pack::Value
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
		static auto constexpr
			EndsWith
				()
		->	bool
		{	return
				Pack::EndsWith
				(	CharacterSequence
				,	MakeV
					<	Pack::Value
					,	t_vStartString
					>
				)
			;
		}
	};

	/// construct from value pack
	template
		<	template
				<	char
					...
				>
			typename
				t_t1Derived
		,	char
			...	t_tpChar
		>
		StringLiteral
		(	Base
			<	t_t1Derived
			,	t_tpChar
				...
			>
		)
	->	StringLiteral
		<	char
			[	sizeof...(
					t_tpChar
				)
			+	1uz
			]
		>
	;
}

static_assert
	(	ID::Base<Pack::Value, 'a', 'b', 'c'>
		::	template
			StartsWith<"ab">
			()
	)
;

static_assert
	(	ID::Base<Pack::Value, 'a', 'b', 'c'>
		::	template
			EndsWith<"bc">
			()
	)
;
