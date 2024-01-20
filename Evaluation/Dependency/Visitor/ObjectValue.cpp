export module Evaluation.Dependency.Visitor.ObjectValue;

import Evaluation.Dependency.Visitor.CommonResult;
import Evaluation.Dependency.Visitor.Invoke;
import Evaluation.Dependency.Visitor.LaunderCast;
import Evaluation.Dependency.Visitor.ObjectReference;

import Std;

export namespace
	Visitor
{
	template
		<	::std::size_t
				t_vBufferSize
		,	::std::align_val_t
				t_vBufferAlign
		>
	class
		ObjectValue
	{
		auto static constexpr inline
			BufferSize
		=	t_vBufferSize
		;

		auto static constexpr inline
			BufferAlign
		=	static_cast<::std::size_t>
			(	t_vBufferAlign
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
		auto static constexpr inline
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
		auto static constexpr inline
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
		auto static constexpr inline
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
		auto static constexpr inline
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

		auto constexpr inline
		(	Destroy
		)	()
			noexcept
		->	void
		{
			auto
				rObject
			=	m_fAccess
				(	m_vBuffer
					.	data
						()
				)
			;
			rObject
			.	Delete
				()
			;
		}

	public:
		template
			<	typename
					t_tObject
			,	typename
				...	t_tpArgument
			>
		explicit(true) constexpr inline
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

		explicit(false) constexpr inline
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

		auto constexpr inline
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
		explicit(false) constexpr inline
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

		template
			<	typename
					t_tObject
			>
		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			t_tObject&
		)	()	&
			noexcept
		{
			ObjectReference
				rObject
			=	*this
			;
			return
				rObject
				.	operator t_tObject&
					()
			;
		}

		constexpr inline
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
		auto static constexpr inline
		(	RefersTo
		)	(	ObjectReference
					i_rObject
			)
			noexcept
		->	bool
		{	return
				i_rObject
				.	IsDeletedBy
					(	&Delete
						<	::std::remove_cvref_t
							<	t_tObject
							>
						>
					)
			;
		}

		template
			<	typename
					t_tCandidate
			>
		[[nodiscard]]
		auto static constexpr inline
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
		auto static constexpr inline
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
}
