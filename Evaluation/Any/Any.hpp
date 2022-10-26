export module Evaluation.Any;

export import Evaluation.Shared;

import <any>;

export namespace
	Bodies3D
{
	struct
		IBody
	{
		virtual
		auto
			ComputeVolume
			()	const
		noexcept
		->	Float
		=	0
		;

		IBody() = default;
		IBody(IBody const&) = default;
		IBody(IBody&&) = default;

		virtual
			compl
			IBody
			()
			noexcept
		=	default
		;
	};

	template
		<	typename
				t_tBody
		>
	struct
		BodyAdapter
		:	IBody
	{
		t_tBody
			m_vBody
		;

		auto
			ComputeVolume
			()	const
		noexcept
		->	Float
		override
		{
			return
				m_vBody
				.	ComputeVolume
					()
			;
		}
	};


	struct
		AnyBody
	{
		std::any
			m_vAny
		;
		auto
		(*	m_fCast
		)	(	std::any const
				&
			)
		->	IBody const
			&
		;

		template
			<	typename
					t_tBody
			>
		constexpr
			AnyBody
			(	std::in_place_type_t
				<	t_tBody
				>
			)
		:	m_vAny
			{	std::in_place_type
				<	BodyAdapter
					<	t_tBody
					>
				>
			}
		,	m_fCast
			{	+[]	(	std::any const
						&	i_rAny
					)
				-> IBody const
					&
				{	return
						std::any_cast
						<	BodyAdapter
							<	t_tBody
							>	const
							&
						>(	i_rAny
						)
					;
				}
			}
		{}

		auto
			operator->
			()	const
		->	IBody const
			*
		{	return
				&m_fCast
				(	m_vAny
				)
			;
		}
	};
}
