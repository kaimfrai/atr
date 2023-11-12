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
	{};

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

		using
			HeapLayoutType
		=	Layout::CreateType
			<	t_vDistrictIndex
			,	t_tTypeName
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
				<	Layout::DistrictType
					<	t_tTypeName
					,	t_tpDistrict
						...
					>
				,	Composition
					.	GetDistrictInfo
						(	t_vDistrictIndex
						)
				>
			;
		}

	public:
		explicit(false) constexpr inline
		(	MoveHeapGuard
		)	()
		{
			GuardedValue
			()
			=	new
				HeapLayoutType
			;
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
					<	HeapLayoutType
					>
				)
			{	delete
					[]
					static_cast<::std::remove_extent_t<HeapLayoutType>*>
					(	GuardedValue
						()
					)
				;
			}
			else
			{	delete
					static_cast<HeapLayoutType*>
					(	GuardedValue
						()
					)
				;
			}
		}
	};
}
