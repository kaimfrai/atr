export module Meta.Value;

export import Meta.Index;
export import Meta.Type;
export import Meta.Concept;
export import Meta.Ignore;

export namespace
	Meta
{
	template
		<	ProtoAll
				t_tValue
		>
	struct
		Value
	{
		static_assert
		(	ProtoVoid<t_tValue>
		or	ProtoQualifiedFunction<t_tValue>
		,	"Insufficient specialization of Meta::Value!"
		);

		static TypeToken<t_tValue> constexpr
			Type
		{};

		friend auto constexpr
		(	operator==
		)	(	Value const&
			,	Value const&
			)
		->	bool
		=	default;
	};

	template
		<	ProtoValue
				t_tValue
		>
	struct
		Value
		<	t_tValue
		>
	{
		static TypeToken<t_tValue> constexpr
			Type
		{};

		t_tValue
			m_vValue
			[[no_unique_address]]
		;

		constexpr
		(	Value
		)	()
		=	default
		;

		constexpr
		(	Value
		)	(	t_tValue const
				&	i_rValue
			)
		requires
			ProtoCopyConstructible<t_tValue>
		:	m_vValue
			{	i_rValue
			}
		{}

		constexpr
		(	Value
		)	(	t_tValue
				&&	i_rValue
			)
		requires
			ProtoMoveConstructible<t_tValue>
		:	m_vValue
			{	::std::move
				(	i_rValue
				)
			}
		{}

		auto constexpr
		(	operator=
		)	(	t_tValue const
				&	i_rValue
			)	&
		->	Value&
		requires
			ProtoCopyable<t_tValue>
		{
			m_vValue = i_rValue;
			return *this;
		}

		auto constexpr
		(	operator=
		)	(	t_tValue
				&&	i_rValue
			)	&
		->	Value&
		requires
			ProtoMovable<t_tValue>
		{
			m_vValue = ::std::move(i_rValue);
			return *this;
		}

		template
			<	ProtoArgument
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	t_tpArgument
				&&
				...	i_rpArgument
			)	&
			noexcept
			(	::std::is_nothrow_invocable_v
				<	t_tValue&
				,	t_tpArgument&&
					...
				>
			)
		->	::std::invoke_result_t
			<	t_tValue&
			,	t_tpArgument&&
				...
			>
		requires
			::std::invocable
			<	t_tValue&
			,	t_tpArgument&&
				...
			>
		{	return
			m_vValue
			(	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}

		template
			<	ProtoArgument
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	t_tpArgument
				&&
				...	i_rpArgument
			)	const&
			noexcept
			(	::std::is_nothrow_invocable_v
				<	t_tValue const&
				,	t_tpArgument&&
					...
				>
			)
		->	::std::invoke_result_t
			<	t_tValue const&
			,	t_tpArgument&&
				...
			>
		requires
			::std::invocable
			<	t_tValue const&
			,	t_tpArgument&&
				...
			>
		{	return
			m_vValue
			(	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}

		template
			<	ProtoArgument
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	t_tpArgument
				&&
				...	i_rpArgument
			)	&&
			noexcept
			(	::std::is_nothrow_invocable_v
				<	t_tValue&&
				,	t_tpArgument&&
					...
				>
			)
		->	::std::invoke_result_t
			<	t_tValue&&
			,	t_tpArgument&&
				...
			>
		requires
			::std::invocable
			<	t_tValue&&
			,	t_tpArgument&&
				...
			>
		{	return
			m_vValue
			(	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}

		friend auto constexpr
		(	operator==
		)	(	Value const&
			,	Value const&
			)
		->	bool
		requires
			ProtoEqualityComparable
			<	t_tValue
			>
		;
	};

	template
		<	ProtoNullPointer
				t_tValue
		>
	struct
		Value
		<	t_tValue
		>
	{
		static TypeToken<t_tValue> constexpr
			Type
		{};

		constexpr
		(	Value
		)	()
		=	default
		;

		constexpr
		(	Value
		)	(	t_tValue
			)
		{}

		auto constexpr
		(	operator=
		)	(	t_tValue
			)	&
		->	Value&
		{	return *this;	}

		friend auto constexpr
		(	operator==
		)	(	Value const&
			,	Value const&
			)
		->	bool
		=	default;
	};

	template
		<	ProtoStateless
				t_tValue
		>
	struct
		Value
		<	t_tValue
		>
	{
		static TypeToken<t_tValue> constexpr
			Type
		{};

		constexpr
		(	Value
		)	()
		=	default
		;

		constexpr
		(	Value
		)	(	t_tValue
			)
		{}

		auto constexpr
		(	operator=
		)	(	t_tValue
			)	&
		->	Value&
		{	return *this;	}

		template
			<	ProtoArgument
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	t_tpArgument
				&&
				...	i_rpArgument
			)	const
			noexcept
			(	::std::is_nothrow_invocable_v
				<	t_tValue
				,	t_tpArgument&&
					...
				>
			)
		->	::std::invoke_result_t
			<	t_tValue
			,	t_tpArgument&&
				...
			>
		requires
			::std::invocable
			<	t_tValue
			,	t_tpArgument&&
				...
			>
		{	return
			t_tValue{}
			(	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}

		friend auto constexpr
		(	operator==
		)	(	Value const&
			,	Value const&
			)
		->	bool
		=	default;
	};

	template
		<	ProtoScalar
				t_tValue
		>
	struct
		Value
		<	t_tValue
		>
	{
		static TypeToken<t_tValue> constexpr
			Type
		{};

		t_tValue
			m_vValue
			[[no_unique_address]]
		;

		constexpr
		(	Value
		)	()
		=	default
		;

		constexpr
		(	Value
		)	(	t_tValue
					i_vValue
			)
		:	m_vValue
			{	i_vValue
			}
		{}

		auto constexpr
		(	operator=
		)	(	t_tValue
					i_vValue
			)	&
		->	Value&
		{
			m_vValue = i_vValue;
			return *this;
		}

		friend auto constexpr
		(	operator==
		)	(	Value const&
			,	Value const&
			)
		->	bool
		;
	};

	template
		<	ProtoValue
				t_tValue
		,	USize
			...	t_npIndex
		>
	struct
		IndexedArray
	{
		using value_type = t_tValue;
		using size_type = USize;
		using difference_type = SSize;
		using reference = Value<t_tValue>&;
		using const_reference = Value<t_tValue> const&;
		using pointer = Value<t_tValue>*;
		using const_pointer = Value<t_tValue> const*;
		using iterator = pointer;
		using const_iterator = const_pointer;

		static auto constexpr
		(	size
			[[nodiscard]]
		)	()
		->	USize
		{	return sizeof...(t_npIndex);	}

		static auto constexpr
		(	max_size
			[[nodiscard]]
		)	()
		->	USize
		{	return sizeof...(t_npIndex);	}

		static auto constexpr
		(	empty
			[[nodiscard]]
		)	()
		->	bool
		{	return size() == 0uz;	}

		Value<t_tValue>
			m_vValue
		[	size()
		];

		constexpr
		(	IndexedArray
		)	()
		=	default
		;

		constexpr
		(	IndexedArray
		)	(	t_tValue const
				(&	i_rValue
				)[	size()
				]
			)
		requires
			ProtoCopyConstructible<t_tValue>
		:	m_vValue
			{	i_rValue
				[	t_npIndex
				]
				...
			}
		{}

		explicit constexpr
		(	IndexedArray
		)	(	ValueToType
				<	((void)t_npIndex, 0)
				,	t_tValue
				>	const
				&
				...	i_rpArgument
			)
		requires
			ProtoCopyConstructible<t_tValue>
		:	m_vValue
			{	i_rpArgument
				...
			}
		{}

		constexpr
		(	IndexedArray
		)	(	t_tValue
				(&&	i_rValue
				)[	size()
				]
			)
		requires
			ProtoMoveConstructible
			<	t_tValue
			>
		:	m_vValue
			{	::std::move
				(	i_rValue
				)[	t_npIndex
				]
				...
			}
		{}

		explicit constexpr
		(	IndexedArray
		)	(	ValueToType
				<	((void)t_npIndex, 0)
				,	t_tValue
				>
				&&
				...	i_rpArgument
			)
		requires
			ProtoMoveConstructible<t_tValue>
		:	m_vValue
			{	::std::move
				(	i_rpArgument
				)
				...
			}
		{}

		auto constexpr
		(	operator=
		)	(	t_tValue const
				(&	i_rValue
				)[	size()
				]
			)	&
		->	IndexedArray&
		requires
			ProtoCopyable<t_tValue>
		{	(	...
			,	(	m_vValue[t_npIndex]
				=	i_rValue[t_npIndex]
				)
			);

			return *this;
		}

		auto constexpr
		(	operator=
		)	(	t_tValue
				(&&	i_rValue
				)[	size()
				]
			)	&
		->	IndexedArray&
		requires
			ProtoMovable<t_tValue>
		{	(	...
			,	(	m_vValue[t_npIndex]
				=	::std::move(i_rValue)[t_npIndex]
				)
			);

			return *this;
		}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	&
		->	Value<t_tValue>&
		{	return m_vValue[i_nIndex];	}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	const&
		->	Value<t_tValue> const&
		{	return m_vValue[i_nIndex];	}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	&&
		->	t_tValue
		requires
			ProtoMoveConstructible<t_tValue>
		{	return ::std::move(m_vValue[i_nIndex]);	}

		auto constexpr
		(	fill
		)	(	t_tValue const
				&	i_rValue
			)
		->	void
		requires
			ProtoCopyable<t_tValue>
		{	(	...
			,	(	m_vValue[t_npIndex]
				=	i_rValue
				)
			);
		}

		friend auto constexpr
		(	begin
		)	(	IndexedArray
				&	i_rArray
			)
		->	t_tValue*
		{	return begin(i_rArray.m_vValue);	}

		friend auto constexpr
		(	begin
		)	(	IndexedArray const
				&	i_rArray
			)
		->	t_tValue const*
		{	return begin(i_rArray.m_vValue);	}

		friend auto constexpr
		(	end
		)	(	IndexedArray
				&	i_rArray
			)
		->	t_tValue*
		{	return end(i_rArray.m_vValue);	}

		friend auto constexpr
		(	end
		)	(	IndexedArray const
				&	i_rArray
			)
		->	t_tValue const*
		{	return end(i_rArray.m_vValue);	}


		friend auto constexpr
		(	swap
		)	(	IndexedArray
				&	i_rLeft
			,	IndexedArray
				&	i_rRight
			)
		->	void
		requires
			ProtoMovable<t_tValue>
		{	using ::std::swap;
			(	...
			,	swap
				(	i_rLeft[t_npIndex]
				,	i_rRight[t_npIndex]
				)
			);
		}
	};
}

namespace
	Meta
{
	///	FIXME: Ideally, this helper should be an immediately invoked lambda. However, upon instantiation
	///	this crashes clang as of now.
	template
		<	ProtoValue
				t_tValue
		,	USize
			...	t_npIndex
		>
	static auto constexpr
	(	DeduceIndexedArray
	)	(	IndexToken
			<	t_npIndex
				...
			>
		)
	->	IndexedArray
		<	t_tValue
		,	t_npIndex
			...
		>
	{	return
		::std::declval
		<	IndexedArray
			<	t_tValue
			,	t_npIndex
				...
			>
		>();
	}
	template
		<	ProtoValue
				t_tValue
		,	USize
				t_nExtent
		>
	using
		MakeIndexedArray
	=	decltype
		(	DeduceIndexedArray
			<	t_tValue
			>(	Sequence
				<	t_nExtent
				>()
			)
		)
	;
}

export namespace
	Meta
{
	template
		<	ProtoValue
				t_tValue
		,	USize
				t_nExtent
		>
	struct
		Value
		<	t_tValue
			[	t_nExtent
			]
		>
	:	MakeIndexedArray
		<	t_tValue
		,	t_nExtent
		>
	{
		static TypeToken<t_tValue[t_nExtent]> constexpr
			Type
		{};

		using MakeIndexedArray<t_tValue, t_nExtent>::MakeIndexedArray;

		constexpr
		(	Value
		)	()
		=	default
		;

		auto constexpr
		(	operator=
		)	(	t_tValue const
				(&	i_rValue
				)[	t_nExtent
				]
			)	&
		->	Value&
		requires
			ProtoCopyable<t_tValue>
		{
			MakeIndexedArray<t_tValue, t_nExtent>::operator=
			(	i_rValue
			);
			return *this;
		}

		auto constexpr
		(	operator=
		)	(	t_tValue
				(&&	i_rValue
				)[	t_nExtent
				]
			)	&
		->	Value&
		requires
			ProtoMovable<t_tValue>
		{
			MakeIndexedArray<t_tValue, t_nExtent>::operator=
			(	::std::move
				(	i_rValue
				)
			);

			return *this;
		}
	};

	template
		<	ProtoValue
				t_tValue
		>
	(	Value
	)	(	t_tValue&
		)
	->	Value
		<	t_tValue
		>
	;

	template
		<	ProtoValue
				t_tValue
		>
	(	Value
	)	(	t_tValue const&
		)
	->	Value
		<	t_tValue
		>
	;

	template
		<	ProtoValue
				t_tValue
		>
	(	Value
	)	(	t_tValue&&
		)
	->	Value
		<	t_tValue
		>
	;

	template
		<	ProtoScalar
				t_tValue
		>
	(	Value
	)	(	t_tValue
		)
	->	Value
		<	t_tValue
		>
	;

	template
		<	ProtoStateless
				t_tValue
		>
	(	Value
	)	(	t_tValue
		)
	->	Value
		<	t_tValue
		>
	;


	template
		<	ProtoValue
				t_tValue
		,	USize
				t_nExtent
		>
	using
		Array
	=	Value
		<	t_tValue
			[	t_nExtent
			]
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoMoveConstructibleAsValue
	=	Proto::MoveConstructible<t_tProto>
	or	Proto::Valueless<t_tProto>
	or	Proto::Scalar<t_tProto>
	or	Proto::None<t_tProto>
	;

	template
		<	ProtoMoveConstructibleAsValue
				t_tValue
		>
	using
		MoveConstructibleValue
	=	Value
		<	t_tValue
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoCopyConstructibleAsValue
	=	Proto::CopyConstructible<t_tProto>
	or	Proto::Valueless<t_tProto>
	or	Proto::Scalar<t_tProto>
	or	Proto::None<t_tProto>
	;

	template
		<	ProtoCopyConstructibleAsValue
				t_tValue
		>
	using
		CopyConstructibleValue
	=	Value
		<	t_tValue
		>
	;
}