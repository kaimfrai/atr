export module Meta.String.Chain;

import Meta.String.Literal;

import Std;

export namespace
	Meta::String
{
	struct
		Chain
	{
		char static constexpr
			Empty
			[]
		=	""
		;

		char const
		*	Value
		=	Empty
		;

		Chain const
		*	Next
		=	nullptr
		;

		[[nodiscard]]
		friend auto constexpr
		(	operator==
		)	(	Chain
					i_vLeft
			,	Chain
					i_vRight
			)
			noexcept
		->	bool
		{	return
			::std::is_eq
			(	i_vLeft
			<=>	i_vRight
			);
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator<=>
		)	(	Chain
					i_vLeft
			,	Chain
					i_vRight
			)
			noexcept
		->	::std::strong_ordering
		{
			static auto constexpr
				fNextChar
			=	[]	(	Chain
						&	i_rChain
					)
				{
					while(	(	*	i_rChain
									.	Value
							==	'\0'
							)
						and	(	i_rChain
								.	Next
							!=	nullptr
							)
						)
					{
						i_rChain
						=	*	i_rChain
								.	Next
						;
					}
					return
					*	i_rChain
						.	Value
					;
				}
			;

			for (
				;
				;	++	i_vLeft
						.	Value
				,	++	i_vRight
						.	Value
				)
			{
				auto const
					vLeftChar
				=	fNextChar
					(	i_vLeft
					)
				;

				auto const
					vRightChar
				=	fNextChar
					(	i_vRight
					)
				;

				if	(	auto const
							vCompare
						=	(	vLeftChar
							<=>	vRightChar
							)
					;	not
						::std::is_eq
						(	vCompare
						)
					)
				{	return
						vCompare
					;
				}

				if	(	vLeftChar
					==	'\0'
					)
				{	return
						::std::strong_ordering::equal
					;
				}
			}
		}

		[[nodiscard]]
		friend auto constexpr
		(	operator+
		)	(	char const
				*	i_aLeft
			,	Chain const
				&	i_rRight
			)
			noexcept
		->	Chain
		{
			if	(	i_aLeft
				==	nullptr
				)
			{	return
					i_rRight
				;
			}
			return
			{	i_aLeft
			,	&i_rRight
			};
		}
	};
}
