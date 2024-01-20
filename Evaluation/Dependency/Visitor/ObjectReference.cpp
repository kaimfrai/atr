export module Evaluation.Dependency.Visitor.ObjectReference;

import Std;

export namespace
	Visitor
{
	using
		Deleter
	=	auto
		(*)	(	void
				*
			)
			noexcept
		->	::std::source_location
	;

	class
		ObjectReference
	{
		void
		*	m_aObject
		;
		Deleter
			m_fDeleter
		;

	public:
		explicit(true) constexpr inline
		(	ObjectReference
		)	(	void
				*	i_aObject
			,	Deleter
					i_fDeleter
			)
		:	m_aObject
			{	i_aObject
			}
		,	m_fDeleter
			{	i_fDeleter
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	IsDeletedBy
		)	(	Deleter
					i_fOtherDeleter
			)	const
			noexcept
		->	bool
		{	return
				m_fDeleter
			==	i_fOtherDeleter
			;
		}

		auto constexpr inline
		(	Delete
		)	()
			noexcept
		->	void
		{	m_fDeleter
			(	m_aObject
			);
		}

		template
			<	typename
					t_tObject
			>
		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			t_tObject
		)	()	const
			noexcept
		{	return
			static_cast<t_tObject>
			(	*
				::std::launder
				(	static_cast
					<	::std::add_pointer_t
						<	t_tObject
						>
					>(	m_aObject
					)
				)
			);
		}
	};
}
