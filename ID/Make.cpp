export module ID.Make;

export import ID.StringLiteral;
export import Std;

export import <PackTemplate/Instance.hpp>;
export import <Pack/Instance.hpp>;

export namespace
	ID
{
	/// dispatches a string literal into its characters
	///	creates an instance of the given identifer template with all dispatched characters inserted
	template
		<	template
				<	typename
						t_tChar
				,	t_tChar
					...
				>
			typename
				t_t1Destination
		,	StringLiteral
				t_vStringLiteral
		>
	constexpr
	Pack::SequenceInstance auto
		Make
		()
	{
		using
			CharType
		=	typename
			decltype(
				t_vStringLiteral
			)::	CharType
		;
		
		constexpr
		Stateless::Type auto
			fIdentifierMaker
		=	[]	<	Std::USizeType
					...	t_npIndex
				>(	std::index_sequence
					<	t_npIndex
						...
					>
				)
			{	return
					t_t1Destination
					<	CharType
					,	t_vStringLiteral
						[	t_npIndex
						]
						...
					>{}
				;
			}
		;
		
		return
			fIdentifierMaker
			(	t_vStringLiteral
				.	CharacterIndexSequence
			)
		;
	}
	
	/// creates an identifier type
	template
		<	template
				<	typename
						t_tChar
				,	t_tChar
					...
				>
			typename
				t_t1Destination
		,	StringLiteral
				t_vStringLiteral
		>
	using
		MakeT
	=	decltype(
			Make
			<	t_t1Destination
			,	t_vStringLiteral
			>()
		)
	;
	
	/// create an identifier value
	template
		<	template
				<	typename
						t_tChar
				,	t_tChar
					...
				>
			typename
				t_t1Destination
		,	StringLiteral
				t_vStringLiteral
		>
	constexpr
	Pack::SequenceInstance auto
		MakeV
	=	Make
		<	t_t1Destination
		,	t_vStringLiteral
		>()
	;
}
