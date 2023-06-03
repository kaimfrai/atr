export module Evaluation.Any;

import Evaluation.Dependency.DataTypes;

import Std;

export namespace
	Bodies3D
{
	struct
		IBody
	{
		auto virtual
		(	ComputeVolume
		)	()	const
			noexcept
		->	Float
		=	0
		;

		explicit(false) constexpr
		(	IBody
		)	()
			noexcept
		=	default;

		explicit(false) constexpr
		(	IBody
		)	(	IBody const
				&
			)
			noexcept
		=	default;

		explicit(false) constexpr
		(	IBody
		)	(	IBody
				&&
			)
			noexcept
		=	default;

		virtual constexpr
		(	compl
			IBody
		)	()
			noexcept
		=	default;
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

		auto constexpr
		(	ComputeVolume
		)	()	const
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
		::std::any
			m_vAny
		;
		auto
		(*	m_fCast
		)	(	::std::any const
				&
			)
			noexcept
		->	IBody const
			&
		;

		template
			<	typename
					t_tBody
			>
		explicit(false) constexpr
		(	AnyBody
		)	(	::std::in_place_type_t
				<	t_tBody
				>
			)
			noexcept
		:	m_vAny
			{	::std::in_place_type
				<	BodyAdapter
					<	t_tBody
					>
				>
			}
		,	m_fCast
			{	+[]	(	::std::any const
						&	i_rAny
					)
					noexcept
				->	IBody const
					&
				{	return
					::std::any_cast
					<	BodyAdapter
						<	t_tBody
						>	const
						&
					>(	i_rAny
					);
				}
			}
		{}

		auto constexpr
		(	operator->
		)	()	const
			noexcept
		->	IBody const
			*
		{	return
			&m_fCast
			(	m_vAny
			);
		}
	};

	auto constexpr
	(	ComputeVolume
	)	(	AnyBody const
			&	i_rBody3D
		)
		noexcept
	->	Float
	{	return
			i_rBody3D
			->	ComputeVolume
				()
		;
	}
}
