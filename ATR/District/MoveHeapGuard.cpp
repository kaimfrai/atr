export module ATR.District.MoveHeapGuard;

import ATR.District.Info;
import ATR.Layout.Create;
import ATR.Member.Composition;

import Meta.Auto.Ref.PledgeCount;

import Std;

export namespace
	ATR::District
{
	template
		<	typename
		>
	struct
		Heap
	;

	template
		<>
	struct
		Heap
		<	void
		>
	{
		template
			<	typename
					t_tData
			>
		using
			Rebind
		=	Heap
			<	t_tData
			>
		;

		void
		*	Data
		;
	};

	template
		<	typename
				t_tDistrict
		>
	[[nodiscard]]
	auto constexpr inline
	(	ReadErasedHeap
	)	(	Heap<void>
				i_aData
		)
		noexcept
	->	decltype(auto)
	{
		if	(	i_aData
				.	Data
			==	nullptr
			)
		{	((void)"Element pointer not initialized", ::std::unreachable());
		}

		if	constexpr
			(	::std::is_array_v
				<	t_tDistrict
				>
			)
		{	return
			::Meta::PledgeCount<::std::extent_v<t_tDistrict>>
			(	static_cast<::std::remove_extent_t<t_tDistrict>*>
				(	i_aData
					.	Data
				)
			);
		}
		else
		{	return
			*	static_cast<t_tDistrict*>
				(	i_aData
					.	Data
				)
			;
		}
	};

	template
		<	typename
				t_tDistrict
		>
	struct
		Heap
	{
		using
			Erased
		=	Heap
			<	void
			>
		;

		[[nodiscard]]
		auto static constexpr inline
		(	Read
		)	(	Erased
				&	i_rErased
			)
			noexcept
		->	decltype(auto)
		{	return
			ReadErasedHeap<t_tDistrict>
			(	i_rErased
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	Read
		)	(	Erased const
				&	i_rErased
			)
			noexcept
		->	decltype(auto)
		{	return
			ReadErasedHeap<t_tDistrict const>
			(	i_rErased
			);
		}
	};

	template
		<	ERole
				t_vRole
		,	short
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
		<	ERole
				t_vRole
		,	short
				t_vDistrictIndex
		,	template
				<	typename
				,	typename
					...
				>
			typename
				t_t1Instance
		,	typename
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
		<	t_vRole
		,	t_vDistrictIndex
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
			(	static_cast<InstanceType&>
				(	*this
				).	Layout
			->*	Layout::Offset_For
				<	Composition
				,	Heap<void>
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
			)
			.	Data
			;
		}

		auto constexpr inline
		(	Delete
		)	()
			noexcept
		->	void
		{
			auto
			&	rGuardedValue
			=	GuardedValue
				()
			;
			if	(	rGuardedValue
				!=	nullptr
				)
			{
				if	constexpr
					(	::std::is_array_v
						<	District
						>
					)
				{	delete
						[]
						static_cast<::std::remove_extent_t<District>*>
						(	rGuardedValue
						)
					;
				}
				else
				{	delete
						static_cast<District*>
						(	rGuardedValue
						)
					;
				}

				(	rGuardedValue
				=	nullptr
				);
			}
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
		=	default;

		explicit(false) constexpr inline
		(	MoveHeapGuard
		)	()
			noexcept
		requires
			(	t_vRole
			==	ERole
				::	Rearguard
			)
		{
			(	GuardedValue
				()
			=	new
				(	::std::nothrow
				)
				District
			);
		}

		explicit(false) constexpr inline
		(	MoveHeapGuard
		)	(	MoveHeapGuard
				&&
			)
			noexcept
		=	default;

		explicit(false) constexpr inline
		(	MoveHeapGuard
		)	(	District
				&&	i_rInitial
			)
			noexcept
		requires
			(	t_vRole
			==	ERole
				::	Rearguard
			)
		{
			if	constexpr
				(	::std::is_array_v
					<	District
					>
				)
			{	auto
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

				(	GuardedValue
					()
				=	aHeapArray
				);
			}
			else
			{	(	GuardedValue
					()
				=	new
					(	::std::nothrow
					)
					District
					{	::std::move
						(	i_rInitial
						)
					}
				);
			}
		}

		explicit(false) constexpr inline
		(	MoveHeapGuard
		)	(	MoveHeapGuard
				&&	i_rOther
			)
			noexcept
		requires
			(	t_vRole
			==	ERole
				::	Rearguard
			)
		{	(	GuardedValue
				()
			=	::std::exchange
				(	i_rOther
					.	GuardedValue
						()
				,	nullptr
				)
			);
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
			if	constexpr
				(	t_vRole
				==	ERole
					::	Vanguard
				)
			{
				Delete
				();
			}
			else
			{	(	i_rOther
					.	GuardedValue
						()
				=	nullptr
				);
			}

			return
			*	this
			;
		}

		constexpr inline
		(	compl
			MoveHeapGuard
		)	()
			noexcept
		=	default;

		constexpr inline
		(	compl
			MoveHeapGuard
		)	()
			noexcept
		requires
			(	t_vRole
			==	ERole
				::	Rearguard
			)
		{	Delete
			();
		}
	};
}
