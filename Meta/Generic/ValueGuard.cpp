export module Meta.Generic.ValueGuard;

import std;

export namespace
	Meta::Generic
{
	///	Changes the value of the given reference and resets it to its original value at the end of the scope.
	template
		<	typename
				t_tValue
		>
	class
		[[nodiscard("Discarding a ValueGuard equates to doing nothing")]]
		ValueGuard
	{
		t_tValue
		&	m_rCurrent
		;

		t_tValue
			m_vOld
		;

	public:
		[[nodiscard("Discarding a ValueGuard equates to doing nothing")]]
		explicit(true) constexpr inline
		(	ValueGuard
		)	(	t_tValue
				&	i_rCurrent
			,	t_tValue
				&&	i_vNew
			)
			noexcept
		:	m_rCurrent
			{	i_rCurrent
			}
		,	m_vOld
			{	::std::exchange
				(	i_rCurrent
				,	::std::move
					(	i_vNew
					)
				)
			}
		{}

		explicit(false)
		(	ValueGuard
		)	(	ValueGuard const
				&
			)
		=	delete;

		explicit(false)
		(	ValueGuard
		)	(	ValueGuard
				&&
			)
		=	delete;

		auto
		(	operator=
		)	(	ValueGuard const
				&
			)
		=	delete;

		auto
		(	operator=
		)	(	ValueGuard
				&&
			)
		=	delete;

		constexpr inline
		(	compl
			ValueGuard
		)	()
			noexcept
		{
			m_rCurrent
			=	::std::move
				(	m_vOld
				)
			;
		}
	};

	template
		<	typename
				t_tValue
		>
	(	ValueGuard
	)	(	t_tValue
			&
		,	t_tValue
			&&
		)
	->	ValueGuard
		<	t_tValue
		>
	;
}
