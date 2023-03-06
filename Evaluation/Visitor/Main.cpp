import Evaluation.CRTP.Cube;
import Evaluation.CRTP.Cuboid;
import Evaluation.CRTP.Pyramid;
import Evaluation.CRTP.Sphere;
import Evaluation.CRTP.Cylinder;
import Evaluation.CRTP.Cone;
import Evaluation.CRTP.Ellipsoid;
import Evaluation.CRTP.Head;

import Evaluation.Shared.MainTemplate;
import Evaluation.Shared.InPlaceConstruct;
import Meta.Size;

import Std;

template
	<	typename
			t_tObject
	,	typename
		...	t_tpArgument
	>
auto constexpr
(	New
)	(	t_tpArgument
		&&
		...	i_rpArgument
	)
->	::std::remove_cvref_t<t_tObject>*
{	return
	new
	::std::remove_cvref_t<t_tObject>
	{	::std::forward<t_tpArgument>
		(	i_rpArgument
		)
		...
	};
}

template
	<	typename
			t_tObject
	>
auto constexpr
(	Delete
)	(	void
		*	i_aObject
	)
	noexcept
->	void
{	delete
	static_cast<t_tObject*>
	(	i_aObject
	);
}

template<>
auto constexpr
(	Delete
	<	void
	>
)	(	void*
	)
	noexcept
->	void
{}

using
	Deleter
=	decltype
	(	&
		Delete
		<	void
		>
	)
;

template
	<	typename
			t_tObject
	>
Deleter constexpr inline
	Deleter_Of
=	&Delete
	<	::std::remove_cvref_t
		<	t_tObject
		>
	>
;

struct
	ObjectReference
{
	void
	*	m_aObject
	;
	Deleter
		m_fDeleter
	;

	auto constexpr
	(	Delete
	)	()	const
		noexcept
	{	m_fDeleter
		(	m_aObject
		);
	}

	template
		<	typename
				t_tObject
		>
	explicit(true) constexpr
	(	operator
		t_tObject
	)	()	const
		noexcept
	{	return
		static_cast<t_tObject>
		(	*
			static_cast
			<	::std::add_pointer_t
				<	t_tObject
				>
			>(	m_aObject
			)
		);
	}

	template
		<	typename
				t_tObject
		>
	friend
	auto constexpr
	(	RefersTo
	)	(	ObjectReference
				i_rObject
		)
		noexcept
	->	bool
	{	return
		(	i_rObject
			.	m_fDeleter
		==	Deleter_Of
			<	t_tObject
			>
		);
	}
};

template
	<	auto
			t_fOverload
	,	typename
		...	t_tpCandidate
	>
using
	CommonResult
=	::std::common_type_t
	<	::std::invoke_result_t
		<	decltype(t_fOverload)
		,	t_tpCandidate
		>
		...
	>
;

template
	<	auto
			t_fOverload
	,	typename
		...	t_tpCandidate
	>
auto constexpr
(	Visit
)	(	ObjectReference
			i_rObject
	)
->	CommonResult
	<	t_fOverload
	,	t_tpCandidate
		...
	>
{	using
		tResult
	=	CommonResult
		<	t_fOverload
		,	t_tpCandidate
			...
		>
	;
	tResult
		vResult
	{};
	if	(	not
			(	...
			or	(	(	RefersTo<t_tpCandidate>
						(	i_rObject
						)
					)
				?	(	(void)
						(	vResult
						=	t_fOverload
							(	static_cast<t_tpCandidate>
								(	i_rObject
								)
							)
						)
					,	true
					)
				:	false
				)
			)
		)
	{	::std::unreachable();
	}
	return
		vResult
	;
}

using
	Visitor
=	auto
	(&)	(	ObjectReference
		)
	->	bool
;

class
	ObjectValue
{
	ObjectReference
		m_rObject
	;

	static ObjectReference constexpr
		NullReference
	{	nullptr
	,	Deleter_Of<void>
	};

public:
	template
		<	typename
				t_tObject
		,	typename
			...	t_tpArgument
		>
	explicit(true) constexpr
	(	ObjectValue
	)	(	::std::in_place_type_t<t_tObject>
		,	t_tpArgument
			&&
			...	i_rpArgument
		)
	:	m_rObject
		{	New<t_tObject>
			(	::std::forward<t_tpArgument>
				(	i_rpArgument
				)
				...
			)
		,	Deleter_Of<t_tObject>
		}
	{}

	explicit(false) constexpr
	(	ObjectValue
	)	(	ObjectValue
			&&	i_rOther
		)
		noexcept
	:	m_rObject
		{	::std::exchange
			(	i_rOther.m_rObject
			,	NullReference
			)
		}
	{}

	auto constexpr
	(	operator
		=
	)	(	ObjectValue
			&&	i_rOther
		)	&
		noexcept
	->	ObjectValue&
	{	(	m_rObject
		=	::std::exchange
			(	i_rOther
				.	m_rObject
			,	NullReference
			)
		);
		return
			*this
		;
	}

	explicit(false) constexpr
	(	operator
		ObjectReference
	)	()	const&
		noexcept
	{	return
			m_rObject
		;
	}

	constexpr
	(	compl
		ObjectValue
	)	()
		noexcept
	{	m_rObject
		.	Delete
			()
		;
	}
};

auto
	main
	(	int
			i_nArgCount
	,	char const
		*	i_aArgValue
		[]
	)
-> int
{
	using namespace
		Bodies3D
	;

	using
		Body3D
	=	ObjectValue
	;
	auto constexpr
		fComputeVolume
	=	+[]	(	ObjectReference
					i_rObject
			)
		{	return
			Visit
			<	[]	(	auto const
						&	i_rBody
					)
				{	return
					i_rBody
					.	ComputeVolume
						()
					;
				}
			,	Cube const&
			,	Cuboid const&
			,	Pyramid const&
			,	Sphere const&
			,	Cylinder const&
			,	Cone const&
			,	Ellipsoid const&
			,	Head const&
			>(	i_rObject
			);
		}
	;

	return
	MainTemplate
	<	Body3D
	,	&InPlaceConstruct<Cube>
	,	&InPlaceConstruct<Cuboid>
	,	&InPlaceConstruct<Pyramid>
	,	&InPlaceConstruct<Sphere>
	,	&InPlaceConstruct<Cylinder>
	,	&InPlaceConstruct<Cone>
	,	&InPlaceConstruct<Ellipsoid>
	,	&InPlaceConstruct<Head>
	,	fComputeVolume
	>(	::std::span
		{	i_aArgValue
		,	static_cast<Meta::USize>(i_nArgCount)
		}
	);
}

