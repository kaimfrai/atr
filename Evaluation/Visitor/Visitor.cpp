export module Evaluation.Visitor;

export import Evaluation.CRTP.Cube;
export import Evaluation.CRTP.Cuboid;
export import Evaluation.CRTP.Pyramid;
export import Evaluation.CRTP.Sphere;
export import Evaluation.CRTP.Cylinder;
export import Evaluation.CRTP.Cone;
export import Evaluation.CRTP.Ellipsoid;
export import Evaluation.CRTP.Head;
export import Evaluation.Dependency.InPlaceConstruct;

import Std;

using
	Deleter
=	auto
	(*)	(	void
			*
		)
		noexcept
	->	void
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

	explicit(true) constexpr
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

	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	explicit(true) constexpr
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

	template
		<	::std::size_t
		,	::std::align_val_t
		>
	friend
	class
		ObjectValue
	;
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

using
	Visitor
=	auto
	(&)	(	ObjectReference
		)
	->	bool
;

template
	<	typename
			t_tObject
	>
[[nodiscard]]
auto constexpr
(	LaunderCast
)	(	void
		*	i_aObject
	)
	noexcept
->	t_tObject*
{	return
	::std::launder
	(	::std::bit_cast<t_tObject*>
		(	i_aObject
		)
	);
}

template
	<	typename
			t_tObject
	>
[[nodiscard]]
auto constexpr
(	Invoke
)	(	t_tObject
		&&	i_rObject
	,	auto
		&	o_rResult
	,	::std::invocable<t_tObject> auto const
		&	i_fOverload
	)
	noexcept
->	bool
{	(	o_rResult
	=	i_fOverload
		(	::std::forward<t_tObject>
			(	i_rObject
			)
		)
	);
	return
		true
	;
}

template
	<	::std::size_t
			t_nBufferSize
	,	::std::align_val_t
			t_nBufferAlign
	>
class
	ObjectValue
{
	auto static constexpr inline
		BufferSize
	=	t_nBufferSize
	;

	auto static constexpr inline
		BufferAlign
	=	static_cast<::std::size_t>
		(	t_nBufferAlign
		)
	;

	static_assert
	(	(BufferSize % BufferAlign) == 0uz
	,	"BufferSize must be a true multiple of the BufferAlign!"
	);

	template
		<	typename
				t_tObject
		>
	auto static constexpr inline
		FitsBuffer
	=	::std::is_trivially_move_constructible_v
		<	t_tObject
		>
	and	::std::is_trivially_move_assignable_v
		<	t_tObject
		>
	and	(	sizeof(t_tObject)
		<=	BufferSize
		)
	and	(	alignof(t_tObject)
		<=	BufferAlign
		)
	;

	static_assert
	(	FitsBuffer<void*>
	,	"Pointers must always fit into the buffer!"
	);

	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto static constexpr
	(	GetPointerFromBuffer
	)	(	void
			*	i_aObject
		)
		noexcept
	->	t_tObject*
	{
		if	constexpr
			(	::std::is_void_v
				<	t_tObject
				>
			)
		{	return
				nullptr
			;
		}
		else
		if	constexpr
			(	FitsBuffer<t_tObject>
			)
		{	return
			LaunderCast<t_tObject>
			(	i_aObject
			);
		}
		else
		{	return
			*
			LaunderCast<t_tObject*>
			(	i_aObject
			);
		}
	}

	template
		<	typename
				t_tObject
		>
	auto static constexpr
	(	Delete
	)	(	void
			*	i_aObject
		)
		noexcept
	->	void
	{
		if	constexpr
			(	::std::is_void_v
				<	t_tObject
				>
			)
		{	// nothing
		}
		else
		if	constexpr
			(	FitsBuffer<t_tObject>
			)
		{
			if	constexpr
				(	not
					::std::is_trivially_destructible_v
					<	t_tObject
					>
				)
			{	(	LaunderCast
					<	t_tObject
					>(	i_aObject
					)
				->	compl
					t_tObject
					()
				);
			}
		}
		else
		{	delete
			LaunderCast
			<	t_tObject
			>(	i_aObject
			);
		}
	}

	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto static constexpr
	(	Access
	)	(	void
			*	i_aBuffer
		)
		noexcept
	->	ObjectReference
	{	return
		ObjectReference
		{	GetPointerFromBuffer
			<	t_tObject
			>(	i_aBuffer
			)
		,	&Delete<t_tObject>
		};
	}

	using
		Buffer
	=	::std::array
		<	::std::byte
		,	BufferSize
		>
	;

	alignas(BufferAlign)
	Buffer
		m_vBuffer
	;
	auto
	(*	m_fAccess
	)	(	void
			*
		)
		noexcept
	->	ObjectReference
	;

	template
		<	typename
				t_tObject
		,	typename
			...	t_tpArgument
		>
	[[nodiscard]]
	auto static constexpr
	(	New
	)	(	t_tpArgument
			&&
			...	i_rpArgument
		)
		noexcept
	->	Buffer
	{
		alignas(BufferAlign)
		Buffer
			vBuffer
		{};

		if	constexpr
			(	::std::is_void_v
				<	t_tObject
				>
			)
		{	//	nothing
		}
		else
		if	constexpr
			(	FitsBuffer
				<	t_tObject
				>
			)
		{	::std::construct_at
			(	GetPointerFromBuffer
				<	t_tObject
				>(	vBuffer
					.	data()
				)
			,	::std::forward<t_tpArgument>
				(	i_rpArgument
				)
				...
			);
		}
		else
		{	::std::construct_at
			(	::std::bit_cast<t_tObject**>
				(	vBuffer.data()
				)
			,	new	(	::std::nothrow
					)
				t_tObject
				{	::std::forward<t_tpArgument>
					(	i_rpArgument
					)
					...
				}
			);
		}

		return
			vBuffer
		;
	}

	auto constexpr
	(	Destroy
	)	()
		noexcept
	->	void
	{
		auto const
		[	aObject
		,	fDeleter
		]=	m_fAccess
			(	m_vBuffer
				.	data
					()
			)
		;
		fDeleter
		(	aObject
		);
	}

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
		noexcept
	:	m_vBuffer
		{	New<::std::remove_cvref_t<t_tObject>>
			(	::std::forward<t_tpArgument>
				(	i_rpArgument
				)
				...
			)
		}
	,	m_fAccess
		{	&Access<::std::remove_cvref_t<t_tObject>>
		}
	{}

	explicit(false) constexpr
	(	ObjectValue
	)	(	ObjectValue
			&&	i_rOther
		)
		noexcept
	:	m_vBuffer
		{	// buffer is not cleared, just the access to it
			i_rOther
			.	m_vBuffer
		}
	,	m_fAccess
		{	::std::exchange
			(	i_rOther
				.	m_fAccess
			,	&Access<void>
			)
		}
	{}

	auto constexpr
	(	operator=
	)	(	ObjectValue
			&&	i_rOther
		)	&
		noexcept
	->	ObjectValue&
	{
		Destroy
		();

		(	m_vBuffer
		=	i_rOther
			.	m_vBuffer
		);

		(	m_fAccess
		=	::std::exchange
			(	i_rOther
				.	m_fAccess
			,	&Access<void>
			)
		);
		return
			*this
		;
	}

	[[nodiscard]]
	explicit(false) constexpr
	(	operator
		ObjectReference
	)	()	&
		noexcept
	{	return
		m_fAccess
		(	m_vBuffer
			.	data
				()
		);
	}

	constexpr
	(	compl
		ObjectValue
	)	()
		noexcept
	{	Destroy
		();
	}

	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto static constexpr
	(	RefersTo
	)	(	ObjectReference
				i_rObject
		)
		noexcept
	->	bool
	{	return
		(	i_rObject
			.	m_fDeleter
		==	&Delete
			<	::std::remove_cvref_t
				<	t_tObject
				>
			>
		);
	}

	template
		<	typename
				t_tCandidate
		>
	[[nodiscard]]
	auto static constexpr
	(	TryDispatch
	)	(	ObjectReference
				i_rObject
		,	auto
			&	o_rResult
		,	::std::invocable<t_tCandidate> auto const
			&	i_fOverload
		)
	->	bool
	{	return
			RefersTo<t_tCandidate>
			(	i_rObject
			)
		?	Invoke
			(	static_cast<t_tCandidate>
				(	i_rObject
				)
			,	o_rResult
			,	i_fOverload
			)
		:	false
		;
	}

	template
		<	auto
				t_fOverload
		,	typename
			...	t_tpCandidate
		>
	[[nodiscard]]
	auto static constexpr
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
				or	TryDispatch
					<	t_tpCandidate
					>(	i_rObject
					,	vResult
					,	t_fOverload
					)
				)
			)
		{	::std::unreachable
			();
		}
		return
			vResult
		;
	}
};

export namespace
	Bodies3D
{
	using
		Body3D
	=	ObjectValue
		<	sizeof(Cuboid)
		,	::std::align_val_t
			{	alignof(Cuboid)
			}
		>
	;

	[[nodiscard]]
	auto constexpr
	(	ComputeVolume
	)	(	ObjectReference
					i_rObject
		)
		noexcept
	{	return
		Body3D::Visit
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
}
