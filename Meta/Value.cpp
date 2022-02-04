export module Meta.Value;

export import Meta.Index;
export import Meta.Type;
export import Meta.Concept;
export import Meta.Ignore;

export namespace
	Meta
{
	template
		<	typename
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

		[[no_unique_address]]
		t_tValue
			Object
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
		:	Object
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
		:	Object
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
			Object = i_rValue;
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
			Object = ::std::move(i_rValue);
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
			Object
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
			Object
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
			Object
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

		static ::std::nullptr_t constexpr
			Object
		=	nullptr
		;

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

		static t_tValue constexpr
			Object
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

		constexpr
		(	operator auto
		)	()	const
		{	return Object;	}

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
			Object
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
		:	Object
			{	i_vValue
			}
		{}

		constexpr
		(	operator auto
		)	()	const
		{	return Object;	}

		auto constexpr
		(	operator=
		)	(	t_tValue
					i_vValue
			)	&
		->	Value&
		{
			Object = i_vValue;
			return *this;
		}

		friend auto constexpr
		(	operator==
		)	(	Value const&
			,	Value const&
			)
		->	bool
		=	default;

		friend auto constexpr
		(	operator <=>
		)	(	Value const&
			,	Value const&
			)
		->	decltype
			(	::std::declval<t_tValue>()
			<=>	::std::declval<t_tValue>()
			)
		=	default;
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
		using value_type = Value<t_tValue>;
		using size_type = USize;
		using difference_type = SSize;
		using reference = Value<t_tValue>&;
		using const_reference = Value<t_tValue> const&;
		using pointer = Value<t_tValue>*;
		using const_pointer = Value<t_tValue> const*;
		using iterator = pointer;
		using const_iterator = const_pointer;

		[[nodiscard]]
		static auto constexpr
		(	size
		)	()
		->	USize
		{	return sizeof...(t_npIndex);	}

		[[nodiscard]]
		static auto constexpr
		(	max_size
		)	()
		->	USize
		{	return sizeof...(t_npIndex);	}

		[[nodiscard]]
		static auto constexpr
		(	empty
		)	()
		->	bool
		{	return size() == 0uz;	}

		Value<t_tValue>
			Object
		[	size()
		];

		constexpr
		(	IndexedArray
		)	()
		=	default
		;

		explicit constexpr
		(	IndexedArray
		)	(	Value<t_tValue const[]>
					i_vValue
			)
		requires
			ProtoCopyConstructible<t_tValue>
		:	Object
			{	i_vValue[t_npIndex]
				...
			}
		{}

		explicit constexpr
		(	IndexedArray
		)	(	t_tValue const
				*	i_aValue
			)
		requires
			ProtoCopyConstructible<t_tValue>
		:	Object
			{	i_aValue
				[	t_npIndex
				]
				...
			}
		{}

		explicit constexpr
		(	IndexedArray
		)	(	Value<t_tValue> const
				*	i_aValue
			)
		requires
			ProtoCopyConstructible<t_tValue>
		:	Object
			{	i_aValue
				[	t_npIndex
				]
				...
			}
		{}

		constexpr
		(	IndexedArray
		)	(	t_tValue const
				(&	i_rValue
				)	[	size()
					]
			)
		requires
			ProtoCopyConstructible<t_tValue>
		:	Object
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
		:	Object
			{	i_rpArgument
				...
			}
		{}

		constexpr
		(	IndexedArray
		)	(	t_tValue
				(&&	i_rValue
				)	[	size()
					]
			)
		requires
			ProtoMoveConstructible
			<	t_tValue
			>
		:	Object
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
		:	Object
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
				)	[	size()
					]
			)	&
		->	IndexedArray&
		requires
			ProtoCopyable<t_tValue>
		{	(	...
			,	(	Object[t_npIndex]
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
			,	(	Object[t_npIndex]
				=	::std::move(i_rValue)[t_npIndex]
				)
			);

			return *this;
		}

		auto constexpr
		(	fill
		)	(	t_tValue const
				&	i_rValue
			)
		->	void
		requires
			ProtoCopyable<t_tValue>
		{	(	...
			,	(	Object[t_npIndex]
				=	i_rValue
				)
			);
		}

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

	struct
		PointerCompare
	{
		template
			<	typename
					t_tLeft
			,	typename
					t_tRight
			>
		auto constexpr
		(	operator()
		)	(	Meta::Value<t_tLeft const*>
					i_aLeft
			,	Meta::Value<t_tRight const*>
					i_aRight
			)	const
		->	bool
		{	return
			(	i_aLeft.Object->Object
			<	i_aRight.Object->Object
			);
		}
	};


	template
		<	typename
				t_tElement
		,	Meta::USize
			...	t_npIndex
		>
	auto constexpr
	(	SortPermutation
	)	(	IndexedArray<t_tElement, t_npIndex...> const
			&	i_rArray
		)
	->	Value<USize[sizeof...(t_npIndex)]>
	{
		Value<Value<t_tElement> const*[sizeof...(t_npIndex)]>
			vPointers
		{	&i_rArray.Object
			[	t_npIndex
			]
			...
		};
		::std::sort
		(	begin(vPointers)
		,	end(vPointers)
		,	PointerCompare{}
		);
		return
		Value<USize[sizeof...(t_npIndex)]>
		{	static_cast<USize>
			(	vPointers[t_npIndex].Object
			-	i_rArray.Object
			)
			...
		};
	}
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
		using ValueType = t_tValue[t_nExtent];
		static TypeToken<ValueType> constexpr
			Type
		{};

		using IndexedArray = MakeIndexedArray<t_tValue, t_nExtent>;
		using IndexedArray::IndexedArray;
		using IndexedArray::Object;

		constexpr
		(	Value
		)	()
		=	default
		;

		constexpr
		(	operator Value<Value<t_tValue> const[]>
		)	()	const&
		{	return {Object, t_nExtent};	}

		auto constexpr
		(	operator=
		)	(	t_tValue const
				(&	i_rValue
				)	[	t_nExtent
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
				)	[	t_nExtent
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

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	&
		->	Value<t_tValue>&
		{	return Object[i_nIndex];	}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	const&
		->	Value<t_tValue> const&
		{	return Object[i_nIndex];	}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	&&
		->	Value<t_tValue>
		requires
			ProtoMoveConstructible<t_tValue>
		{	return ::std::move(Object[i_nIndex]);	}

		friend auto constexpr
		(	begin
		)	(	Value
				&	i_rArray
			)
		->	Value<t_tValue>*
		{	return ::std::begin(i_rArray.Object);	}

		friend auto constexpr
		(	begin
		)	(	Value const
				&	i_rArray
			)
		->	Value<t_tValue> const*
		{	return ::std::begin(i_rArray.Object);	}

		friend auto constexpr
		(	end
		)	(	Value
				&	i_rArray
			)
		->	Value<t_tValue>*
		{	return ::std::end(i_rArray.Object);	}

		friend auto constexpr
		(	end
		)	(	Value const
				&	i_rArray
			)
		->	Value<t_tValue> const*
		{	return ::std::end(i_rArray.Object);	}

		[[nodiscard]]
		auto constexpr
		(	front
		)	()	&
		->	Value<t_tValue>&
		{	return Object[0uz];	}

		[[nodiscard]]
		auto constexpr
		(	front
		)	()	const&
		->	Value<t_tValue> const&
		{	return Object[0uz];	}

		[[nodiscard]]
		auto constexpr
		(	front
		)	()	&&
		->	Value<t_tValue>
		requires
			ProtoMoveConstructible<t_tValue>
		{	return ::std::move(Object[0uz]);	}

		[[nodiscard]]
		auto constexpr
		(	back
		)	()	&
		->	Value<t_tValue>&
		{	return Object[t_nExtent - 1uz];	}

		[[nodiscard]]
		auto constexpr
		(	back
		)	()	const&
		->	Value<t_tValue> const&
		{	return Object[t_nExtent - 1uz];	}

		[[nodiscard]]
		auto constexpr
		(	back
		)	()	&&
		->	Value<t_tValue>
		requires
			ProtoMoveConstructible<t_tValue>
		{	return ::std::move(Object[t_nExtent - 1uz]);	}
	};

	template
		<	ProtoValue
				t_tValue
		>
	struct
		Value
		<	t_tValue
			[]
		>
	{
		static TypeToken<t_tValue[]> constexpr
			Type
		{};

		t_tValue
		*	Object
		;
		t_tValue
		*	m_aEnd
		;

		constexpr
		(	Value
		)	()
		=	default
		;

		constexpr
		(	Value
		)	(	t_tValue
				*	i_aBegin
			,	t_tValue
				*	i_aEnd
			)
		:	Object
			{	i_aBegin
			}
		,	m_aEnd
			{	i_aEnd
			}
		{}

		constexpr
		(	Value
		)	(	t_tValue
				*	i_aValue
			,	USize
					i_nSize
			)
		:	Value
			{	i_aValue
			,	i_aValue
			+	i_nSize
			}
		{}

		template
			<	USize
					t_nSize
			>
		constexpr
		(	Value
		)	(	t_tValue
				(&	i_rValue
				)	[	t_nSize
					]
			)
		:	Value
			{	+i_rValue
			,	t_nSize
			}
		{}

		constexpr
		(	Value
		)	(	t_tValue
				*	i_aValue
			)
		requires
			ProtoRegular
			<	t_tValue
			>
		:	Value
			{	i_aValue
			,	[=] mutable
				{
					while(*i_aValue != t_tValue{})
						++i_aValue;
					return i_aValue;
				}()
			}
		{}

		constexpr
		(	Value
		)	(	::std::nullptr_t
			)
		=	delete
		;

		auto constexpr
		(	data
		)	()	const
		noexcept
		->	t_tValue const*
		{	return Object;	}

		auto constexpr
		(	size
		)	()	const
		noexcept
		->	USize
		{	return
			static_cast<USize>
			(	m_aEnd
			-	Object
			);
		}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	&
		->	t_tValue&
		{	return Object[i_nIndex];	}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	const&
		->	t_tValue const&
		{	return Object[i_nIndex];	}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	&&
		->	t_tValue
		requires
			ProtoMoveConstructible<t_tValue>
		{	return ::std::move(Object[i_nIndex]);	}

		friend auto constexpr
		(	begin
		)	(	Value
				&	i_rValue
			)
		->	t_tValue*
		{	return i_rValue.Object;	}

		friend auto constexpr
		(	begin
		)	(	Value const
				&	i_rValue
			)
		->	t_tValue const*
		{	return i_rValue.Object;	}

		friend auto constexpr
		(	end
		)	(	Value
				&	i_rValue
			)
		->	t_tValue*
		{	return i_rValue.m_aEnd;	}

		friend auto constexpr
		(	end
		)	(	Value const
				&	i_rValue
			)
		->	t_tValue const*
		{	return i_rValue.m_aEnd;	}
	};

	template
		<	ProtoValue
				t_tValue
		>
	auto constexpr
	(	operator==
	)	(	Value<t_tValue[]> const
			&	i_rLeft
		,	Value<t_tValue[]> const
			&	i_rRight
		)
	->	bool
	requires
		ProtoEqualityComparable
		<	t_tValue
		>
	{	return
		::std::equal
		(	begin(i_rLeft)
		,	end(i_rLeft)
		,	begin(i_rRight)
		);
	}

	template
		<	ProtoValue
				t_tValue
		>
	auto constexpr
	(	operator<=>
	)	(	Value<t_tValue[]> const
			&	i_rLeft
		,	Value<t_tValue[]> const
			&	i_rRight
		)
	->	decltype
		(	::std::declval<t_tValue>()
		<=>	::std::declval<t_tValue>()
		)
	{
		auto vLeftPos = begin(i_rLeft);
		auto const vLeftEnd = end(i_rLeft);
		bool bLeftRemaining = (vLeftPos != vLeftEnd);

		auto vRightPos = begin(i_rRight);
		auto const vRightEnd = end(i_rRight);
		bool bRightRemaining = (vRightPos != vRightEnd);

		for	(;	(	bLeftRemaining
				and	bRightRemaining
				)
			;		bLeftRemaining
				=	(++vLeftPos != vLeftEnd)
			,		bRightRemaining
				=	(++vRightPos != vRightEnd)
			)
		{
			auto const
				vResult
			=	*vLeftPos
			<=>	*vRightPos
			;
			if	(vResult != 0)
				return vResult;
		}

		if	(bLeftRemaining)
			return ::std::strong_ordering::greater;
		if	(bRightRemaining)
			return ::std::strong_ordering::less;

		return ::std::strong_ordering::equal;
	}

	///	Namespace scope allows making use of implicit conversions.
	///	This allows for template argument erasure.
	template
		<	ProtoValue
				t_tValue
		>
	[[nodiscard]]
	auto constexpr
	(	starts_with
	)	(	Value<Value<t_tValue> const[]>
				i_vArray
		,	Value<Value<t_tValue> const[]>
				i_vPrefix
		)
	->	bool
	{
		if	(i_vPrefix.size() > i_vArray.size())
			return false;

		return
		::std::equal
		(	begin(i_vArray)
		,	begin(i_vArray) + i_vPrefix.size()
		,	begin(i_vPrefix)
		,	end(i_vPrefix)
		);
	}

	///	Namespace scope allows making use of implicit conversions.
	///	This allows for template argument erasure.
	template
		<	ProtoValue
				t_tValue
		>
	[[nodiscard]]
	auto constexpr
	(	ends_with
	)	(	Value<Value<t_tValue> const[]>
				i_vArray
		,	Value<Value<t_tValue> const[]>
				i_vSuffix
		)
	->	bool
	{
		if	(i_vSuffix.size() > i_vArray.size())
			return false;

		return
		::std::equal
		(	end(i_vArray) - i_vSuffix.size()
		,	end(i_vArray)
		,	begin(i_vSuffix)
		,	end(i_vSuffix)
		);
	}

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
			...	t_tpValue
		>
	(	Value
	)	(	t_tpValue const&
			...
		)
	->	Value
		<	::std::common_type_t
			<	t_tpValue
				...
			>	[	sizeof...(t_tpValue)
				]
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
		<	typename
				t_tLeft
		,	typename
				t_tRight
		>
	auto constexpr
	(	operator <=>
	)	(	Meta::Value<t_tLeft> const
			&	i_rLeft
		,	Meta::Value<t_tRight> const
			&	i_rRight
		)
	->	decltype
		(	i_rLeft.Object
		<=>	i_rRight.Object
		)
	{	return
		(	i_rLeft.Object
		<=>	i_rRight.Object
		);
	}

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

	template
		<	typename
				t_tValue
		>
	auto constexpr
	(	UnwrapValue
	)	(	t_tValue&&
				i_rValue
		)
	->	t_tValue
	{	return i_rValue;	}

	template
		<	typename
				t_tValue
		>
	auto constexpr
	(	UnwrapValue
	)	(	Value<t_tValue>
			&	i_rValue
		)
	->	decltype(auto)
	{	return UnwrapValue(i_rValue.Object);	}

	template
		<	typename
				t_tValue
		>
	auto constexpr
	(	UnwrapValue
	)	(	Value<t_tValue> const
			&	i_rValue
		)
	->	decltype(auto)
	{	return UnwrapValue(i_rValue.Object);	}

	template
		<	typename
				t_tValue
		>
	auto constexpr
	(	UnwrapValue
	)	(	Value<t_tValue>
			&&	i_rValue
		)
	->	decltype(auto)
	{	return UnwrapValue(::std::move(i_rValue).Object);	}

	template
		<	typename
				t_tType
		>
	using
		UnwrapType
	=	decltype
		(	UnwrapValue
			(	::std::declval<t_tType>
				()
			)
		)
	;
}
