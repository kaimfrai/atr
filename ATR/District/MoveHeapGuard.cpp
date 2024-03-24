export module ATR.District.MoveHeapGuard;

import ATR.Layout.Create;
import ATR.Layout.Offset;
import ATR.Member.Composition;
import ATR.Member.Info;

import Meta.ID;
import Meta.String.Hash;
import Meta.Token.Type;

import Std;

using ::Meta::ProtoID;
using ::Meta::RestoreTypeEntity;
using ::Meta::String::Hash;
using ::Meta::Type;

export namespace
	ATR::District
{
	template
		<	short
				t_vDistrictIndex
		,	typename
				t_tInstance
		>
	class
		MoveHeapGuard
	{
	public:
		using
			District
		=	MoveHeapGuard
		;
	};

	template
		<	short
				t_vDistrictIndex
		,	template
				<	typename
				,	typename
					...
				>
			typename
				t_t1Instance
		,	ProtoID
				t_tTypeName
		,	typename
			...	t_tpDistrict
		>
	requires
		(	Member::Composition_Of
			<	t_tTypeName
			,	t_tpDistrict
				...
			>
		.	Layout
			[	t_vDistrictIndex
			]
		.	HasAny
			()
		)
	class
		MoveHeapGuard
		<	t_vDistrictIndex
		,	t_t1Instance
			<	t_tTypeName
			,	t_tpDistrict
				...
			>
		>
	{
		using
			InstanceType
		=	t_t1Instance
			<	t_tTypeName
			,	t_tpDistrict
				...
			>
		;

		auto static constexpr inline
		&	Composition
		=	Member::Composition_Of
			<	t_tTypeName
			,	t_tpDistrict
				...
			>
		;

		[[nodiscard]]
		auto constexpr inline
		(	GuardedValue
		)	()	&
			noexcept
		->	void*&
		{	return
				static_cast<InstanceType&>
				(	*this
				).	Layout
			->*	Layout::Offset_For
				<	Composition
				,	void*
				,	Composition
					.	GetDistrictOffset
						(	t_vDistrictIndex
						)
				,	Composition
					.	GetDistrictDistrictIndex
						(	t_vDistrictIndex
						)
				,	nullptr
				>
			;
		}

	public:
		using
			District
		=	Layout::CreateType
			<	Composition
			,	t_vDistrictIndex
			>
		;

		explicit(false) constexpr inline
		(	MoveHeapGuard
		)	()
			noexcept
		{
				GuardedValue
				()
			=	new
				(	::std::nothrow
				)
				District
			;
		}

		explicit(false) constexpr inline
		(	MoveHeapGuard
		)	(	District
				&&	i_rInitial
			)
			noexcept
		{
			if	constexpr
				(	::std::is_array_v
					<	District
					>
				)
			{
				auto
				*	aHeapArray
				=	new
					(	::std::nothrow
					)
					District
				;

				::std::move
				(	::std::begin
					(	i_rInitial
					)
				,	::std::end
					(	i_rInitial
					)
				,	aHeapArray
				);
					GuardedValue
					()
				=	aHeapArray
				;
			}
			else
			{
					GuardedValue
					()
				=	new
					(	::std::nothrow
					)
					District
					{	::std::move
						(	i_rInitial
						)
					}
				;
			}
		}

		explicit(false) constexpr inline
		(	MoveHeapGuard
		)	(	MoveHeapGuard
				&&	i_rOther
			)
			noexcept
		{
			GuardedValue
			()
			=	::std::exchange
				(	i_rOther
					.	GuardedValue
						()
				,	nullptr
				)
			;
		}

		auto constexpr inline
		(	operator=
		)	(	MoveHeapGuard
				&&	i_rOther
			)	&
			noexcept
		->	MoveHeapGuard
			&
		{
			GuardedValue
			()
			=	::std::exchange
				(	i_rOther
					.	GuardedValue
						()
				,	nullptr
				)
			;

			return
				*this
			;
		}

		constexpr inline
		(	compl
			MoveHeapGuard
		)	()
			noexcept
		{
			if	constexpr
				(	::std::is_array_v
					<	District
					>
				)
			{	delete
					[]
					static_cast<::std::remove_extent_t<District>*>
					(	GuardedValue
						()
					)
				;
			}
			else
			{	delete
					static_cast<District*>
					(	GuardedValue
						()
					)
				;
			}
		}
	};
}
