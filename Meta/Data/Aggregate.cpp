export module Meta.Data.Aggregate;

export import Meta.Integer;
export import Meta.Token.Sequence;
export import Meta.Token.Array;
export import Meta.Data.Object;
export import Meta.Concept.Regular;

import Std;

export namespace
	Meta::Data
{
	template
		<	typename
				t_tData
		>
	struct
		Aggregate
	:	Object<t_tData>
	{
		friend auto constexpr
		(	operator ==
		)	(	Aggregate
			,	Aggregate
			)
		->	bool
		=	default;
	};

	template
		<	ProtoValue
				t_tData
		>
	struct
		Aggregate<t_tData>
	:	Object<t_tData>
	{
		auto constexpr
		(	get
		)	()	&
			noexcept
		->	t_tData&
		{	return this->Data;	}

		auto constexpr
		(	get
		)	()	const&
			noexcept
		->	t_tData const&
		{	return this->Data;	}

		auto constexpr
		(	get
		)	()	&&
			noexcept
		->	::std::remove_cv_t<t_tData>
		{	return ::std::move(this->Data);	}

		constexpr
		(	operator decltype(auto)
		)	()	&
			noexcept
		{	return get();	}

		constexpr
		(	operator decltype(auto)
		)	()	const&
			noexcept
		{	return get();	}

		constexpr
		(	operator decltype(auto)
		)	()	&&
			noexcept
		{	return ::std::move(*this).get();	}

		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	t_tpArgument&&
				...	i_rpArgument
			)	&
			noexcept
			(	::std::is_nothrow_invocable_v
				<	t_tData&
				,	t_tpArgument
					...
				>
			)
		->	::std::invoke_result_t
			<	t_tData&
			,	t_tpArgument
				...
			>
		requires
			::std::is_invocable_v
			<	t_tData&
			,	t_tpArgument
				...
			>
		{	return
			{	::std::invoke
				(	get()
				,	::std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				)
			};
		}

		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	t_tpArgument&&
				...	i_rpArgument
			)	const&
			noexcept
			(	::std::is_nothrow_invocable_v
				<	t_tData const&
				,	t_tpArgument
					...
				>
			)
		->	::std::invoke_result_t
			<	t_tData const&
			,	t_tpArgument
				...
			>
		requires
			::std::is_invocable_v
			<	t_tData const&
			,	t_tpArgument
				...
			>
		{	return
			{	::std::invoke
				(	get()
				,	::std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				)
			};
		}

		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	t_tpArgument&&
				...	i_rpArgument
			)	&&
			noexcept
			(	::std::is_nothrow_invocable_v
				<	t_tData&&
				,	t_tpArgument
					...
				>
			)
		->	::std::invoke_result_t
			<	t_tData&&
			,	t_tpArgument
				...
			>
		requires
			::std::is_invocable_v
			<	t_tData&&
			,	t_tpArgument
				...
			>
		{	return
			{	::std::invoke
				(	::std::move(*this).get()
				,	::std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				)
			};
		}
/*
		auto constexpr
		(	operator ->
		)	()	&
			noexcept
			(	noexcept
				(	::std::declval<t_tData&>()
				.	operator->()
				)
			)
		->	Aggregate
			<	decltype
				(	::std::declval<t_tData&>()
				.	operator->()
				)
			>
		requires
			requires
				(	t_tData
					&	i_rData
				)
			{
				i_rData.operator->();
			}
		{	return
			{	get().operator->();
			};
		}

		auto constexpr
		(	operator ->
		)	()	const&
			noexcept
			(	noexcept
				(	::std::declval<t_tData const&>()
				.	operator->()
				)
			)
		->	Aggregate
			<	decltype
				(	::std::declval<t_tData const&>()
				.	operator->()
				)
			>
		requires
			requires
				(	t_tData const
					&	i_rData
				)
			{
				i_rData.operator->();
			}
		{	return
			{	get().operator->()
			};
		}

		auto constexpr
		(	operator ->
		)	()	&&
			noexcept
			(	noexcept
				(	::std::declval<t_tData&&>()
				.	operator->()
				)
			)
		->	Aggregate
			<	decltype
				(	::std::declval<t_tData&&>()
				.	operator->()
				)
			>
		requires
			requires
			{
				::std::declval<t_tData&&>().operator->();
			}
		{	return
			{	get().operator->()
			};
		}*/
	};

	template
		<	ProtoPointer
				t_tPointer
		>
	struct
		Aggregate<t_tPointer>
	:	Object<t_tPointer>
	{
		using value_type = ::std::remove_pointer_t<t_tPointer>;
		using difference_type = SSize;
		using iterator_concept = ::std::contiguous_iterator_tag;

		auto constexpr
		(	get
		)	()	&
			noexcept
		->	t_tPointer&
		{	return this->Data;	}

		auto constexpr
		(	get
		)	()	const&
			noexcept
		->	t_tPointer const&
		{	return this->Data;	}

		auto constexpr
		(	get
		)	()	&&
			noexcept
		->	::std::remove_cv_t<t_tPointer>
		{	return ::std::move(*this).Data;	}

		constexpr
		(	operator decltype(auto)
		)	()	&
			noexcept
		{	return get();	}

		constexpr
		(	operator decltype(auto)
		)	()	const&
			noexcept
		{	return get();	}

		constexpr
		(	operator decltype(auto)
		)	()	&&
			noexcept
		{	return ::std::move(*this).get();	}

		auto constexpr
		(	operator ->
		)	()	const
			noexcept
		->	::std::remove_cv_t<t_tPointer>
		{	return this->Data;	}

		auto constexpr
		(	operator []
		)	(	difference_type
					i_nDifference
			)	const
			noexcept
		->	::std::iter_reference_t<t_tPointer>
		{	return
			this->Data
			[	i_nDifference
			];
		}
	};

	template
		<	ProtoReference
				t_tData
		>
	struct
		Aggregate<t_tData>
	:	Object<t_tData>
	{
		auto constexpr
		(	get
		)	()	const
			noexcept
		->	t_tData
		{	return static_cast<t_tData>(*this->Data);	}

		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	t_tpArgument&&
				...	i_rpArgument
			)	const
			noexcept
			(	::std::is_nothrow_invocable_v
				<	t_tData
				,	t_tpArgument
					...
				>
			)
		->	::std::invoke_result_t
			<	t_tData
			,	t_tpArgument
				...
			>
		requires
			::std::is_invocable_v
			<	t_tData
			,	t_tpArgument
				...
			>
		{	return
			{	::std::invoke
				(	get()
				,	::std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				)
			};
		}

		constexpr
		(	operator decltype(auto)
		)	()	const
			noexcept
		{	return get();	}
	};

	template
		<	typename
				t_tData
		>
	auto constexpr
	(	operator &
	)	(	Aggregate<t_tData&>
				i_vValue
		)
	->	t_tData*
	{	return i_vValue.Data;	}

	template
		<	typename
				t_tElement
		>
	struct
		Aggregate<t_tElement[]>
	:	Object<t_tElement[]>
	{
		static_assert
		(	not ::std::is_bounded_array_v<t_tElement>
		,	"Multidimensional arrays are not supported!"
		);

		using value_type = t_tElement;
		using size_type = USize;
		using difference_type = SSize;
		using reference = t_tElement&;
		using const_reference = t_tElement const&;
		using pointer = t_tElement*;
		using const_pointer = t_tElement const*;
		using iterator = pointer;
		using const_iterator = const_pointer;

		auto constexpr
		(	get
		)	()	&
			noexcept
		->	t_tElement(&)[]
		=	delete;

		auto constexpr
		(	get
		)	()	const&
			noexcept
		->	t_tElement const(&)[]
		=	delete;

		auto constexpr
		(	get
		)	()	&&
			noexcept
		->	t_tElement(&&)[]
		=	delete;

		constexpr
		(	operator decltype(auto)
		)	()	&
			noexcept
		{	return get();	}

		constexpr
		(	operator decltype(auto)
		)	()	const&
			noexcept
		{	return get();	}

		constexpr
		(	operator decltype(auto)
		)	()	&&
			noexcept
		{	return ::std::move(*this).get();	}

		[[nodiscard]]
		static auto constexpr
		(	size
		)	()
		->	size_type
		{	return 0uz;	}

		[[nodiscard]]
		static auto constexpr
		(	max_size
		)	()
		->	size_type
		{	return 0uz;	}

		[[nodiscard]]
		static auto constexpr
		(	empty
		)	()
		->	bool
		{	return true;	}

		[[noreturn]]
		auto constexpr
		(	operator[]
		)	(	USize
			)	&
		->	reference
		{	throw "Index out of bounds!";	}

		[[noreturn]]
		auto constexpr
		(	operator[]
		)	(	USize
			)	const&
		->	const_reference
		{	throw "Index out of bounds!";	}

		[[noreturn]]
		auto constexpr
		(	operator[]
		)	(	USize
			)	&&
		->	value_type
		{	throw "Index out of bounds!";	}

		friend auto constexpr
		(	operator +
		)	(	Aggregate&
			)
		->	pointer
		{	return nullptr;	}

		friend auto constexpr
		(	operator +
		)	(	Aggregate const&
			)
		->	const_pointer
		{	return nullptr;	}

		[[nodiscard]]
		friend auto constexpr
		(	begin
		)	(	Aggregate&
			)
		->	iterator
		{	return nullptr;	}

		[[nodiscard]]
		friend auto constexpr
		(	begin
		)	(	Aggregate const&
			)
		->	const_iterator
		{	return nullptr;	}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	Aggregate&
			)
		->	iterator
		{	return nullptr;	}

		[[nodiscard]]
		friend auto constexpr
		(	end
		)	(	Aggregate const&
			)
		->	const_iterator
		{	return nullptr;	}
	};

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		>
	struct
		Aggregate<t_tElement[t_nExtent]>
	:	Object<t_tElement[t_nExtent]>
	{
		static_assert
		(	not ::std::is_bounded_array_v<t_tElement>
		,	"Multidimensional arrays are not supported!"
		);

		using value_type = t_tElement;
		using size_type = USize;
		using difference_type = SSize;
		using reference = t_tElement&;
		using const_reference = t_tElement const&;
		using pointer = t_tElement*;
		using const_pointer = t_tElement const*;
		using iterator = pointer;
		using const_iterator = const_pointer;

		auto constexpr
		(	get
		)	()	&
			noexcept
		->	t_tElement(&)[t_nExtent]
		{	return this->Data;	}

		auto constexpr
		(	get
		)	()	const&
			noexcept
		->	t_tElement const(&)[t_nExtent]
		{	return this->Data;	}

		auto constexpr
		(	get
		)	()	&&
			noexcept
		->	t_tElement(&&)[t_nExtent]
		{	return ::std::move(this->Data);	}

		constexpr
		(	operator decltype(auto)
		)	()	&
			noexcept
		{	return get();	}

		constexpr
		(	operator decltype(auto)
		)	()	const&
			noexcept
		{	return get();	}

		constexpr
		(	operator decltype(auto)
		)	()	&&
			noexcept
		{	return ::std::move(*this).get();	}

		[[nodiscard]]
		static auto constexpr
		(	size
		)	()
		->	size_type
		{	return t_nExtent;	}

		[[nodiscard]]
		static auto constexpr
		(	max_size
		)	()
		->	size_type
		{	return t_nExtent;	}

		[[nodiscard]]
		static auto constexpr
		(	empty
		)	()
		->	bool
		{	return false;	}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	&
		->	reference
		{	return this->Data[i_nIndex];	}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	const&
		->	const_reference
		{	return this->Data[i_nIndex];	}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	&&
		->	value_type
		{	return ::std::move(this->Data)[i_nIndex];	}
	};

	template
		<	USize
				t_nExtent
		,	ProtoCopyConstructible
				t_tData
		>
	auto constexpr
	(	MakeArrayAggregate
	)	(	t_tData const
			*	i_aData
		)
	->	Aggregate<t_tData[t_nExtent]>
	{	return
		[	i_aData
		]	<	USize
				...	t_npIndex
			>(	IndexToken<t_npIndex...>
			)
		->	Aggregate<t_tData[t_nExtent]>
		{	return
			{	i_aData
				[	t_npIndex
				]
				...
			};
		}(	Sequence<t_nExtent>
		);
	}

	template
		<	typename
				t_tOperand
		,	typename
				t_tResult
		>
	TypeToken<t_tResult> constexpr inline
		WrappedResultType
	{};

	template
		<	typename
				t_tData
		>
	TypeToken<Aggregate<t_tData>> constexpr inline
		WrappedResultType
		<	Aggregate<t_tData>
		,	t_tData
		>
	{};

	template
		<	typename
				t_tData
		>
	TypeToken<Aggregate<t_tData>> constexpr inline
		WrappedResultType
		<	Aggregate<t_tData>&
		,	t_tData
		>
	{};

	template
		<	typename
				t_tData
		>
	TypeToken<Aggregate<t_tData>> constexpr inline
		WrappedResultType
		<	Aggregate<t_tData> const&
		,	t_tData
		>
	{};

	template
		<	typename
				t_tData
		>
	TypeToken<Aggregate<t_tData>> constexpr inline
		WrappedResultType
		<	Aggregate<t_tData>&&
		,	t_tData
		>
	{};

	template
		<	typename
				t_tData
		>
	TypeToken<Aggregate<t_tData>> constexpr inline
		WrappedResultType
		<	Aggregate<t_tData> const&&
		,	t_tData
		>
	{};

	template
		<	typename
				t_tData
		>
	TypeToken<Aggregate<t_tData>> constexpr inline
		WrappedResultType
		<	Aggregate<t_tData const>
		,	t_tData
		>
	{};

	template
		<	typename
				t_tData
		>
	TypeToken<Aggregate<t_tData>> constexpr inline
		WrappedResultType
		<	Aggregate<t_tData const>&
		,	t_tData
		>
	{};

	template
		<	typename
				t_tData
		>
	TypeToken<Aggregate<t_tData>> constexpr inline
		WrappedResultType
		<	Aggregate<t_tData const> const&
		,	t_tData
		>
	{};

	template
		<	typename
				t_tData
		>
	TypeToken<Aggregate<t_tData>> constexpr inline
		WrappedResultType
		<	Aggregate<t_tData const>&&
		,	t_tData
		>
	{};

	template
		<	typename
				t_tData
		>
	TypeToken<Aggregate<t_tData>> constexpr inline
		WrappedResultType
		<	Aggregate<t_tData const> const&&
		,	t_tData
		>
	{};

	template
		<	typename
				t_tData
		>
	TypeToken<Aggregate<t_tData>&> constexpr inline
		WrappedResultType
		<	Aggregate<t_tData>&
		,	t_tData&
		>
	{};

	template
		<	typename
				t_tData
		>
	TypeToken<Aggregate<t_tData> const&> constexpr inline
		WrappedResultType
		<	Aggregate<t_tData> const&
		,	t_tData const&
		>
	{};

	template
		<	typename
				t_tData
		>
	TypeToken<Aggregate<t_tData>&&> constexpr inline
		WrappedResultType
		<	Aggregate<t_tData>&&
		,	t_tData&&
		>
	{};

	template
		<	typename
				t_tData
		>
	TypeToken<Aggregate<t_tData> const&&> constexpr inline
		WrappedResultType
		<	Aggregate<t_tData> const&&
		,	t_tData const&&
		>
	{};

	template
		<	typename
				t_tOperand
		,	typename
				t_tResult
		>
	using
		WrappedResult
	=	TypeEntity
		<	WrappedResultType
			<	t_tOperand
			,	t_tResult
			>
		>
	;

	template
		<	typename
				t_tData
		>
	auto constexpr
	(	operator +
	)	(	Aggregate<t_tData>
			&	i_rValue
		)
	->	WrappedResult
		<	Aggregate<t_tData>&
		,	decltype(+i_rValue.get())
		>
	{	return { +i_rValue.get() };	}

	template
		<	typename
				t_tData
		>
	auto constexpr
	(	operator +
	)	(	Aggregate<t_tData> const
			&	i_rValue
		)
	->	WrappedResult
		<	Aggregate<t_tData> const&
		,	decltype(+i_rValue.get())
		>
	{	return { +i_rValue.get() };	}

	template
		<	::std::contiguous_iterator
				t_tData
		>
	auto constexpr
	(	operator *
	)	(	Aggregate<t_tData> const
			&	i_rValue
		)
	->	::std::iter_reference_t<t_tData>
	{	return *i_rValue.get();	}

	template
		<	::std::weakly_incrementable
				t_tData
		>
	auto constexpr
	(	operator ++
	)	(	Aggregate<t_tData>
			&	i_rValue
		)
	->	Aggregate<t_tData>&
	{	++i_rValue.Data;
		return i_rValue;
	}

	template
		<	::std::incrementable
				t_tData
		>
	auto constexpr
	(	operator ++
	)	(	Aggregate<t_tData>
			&	i_rValue
		,	int
		)
	->	Aggregate<t_tData>
	{	auto const vCopy = i_rValue;
		i_rValue.Data++;
		return vCopy;
	}

	template
		<	::std::bidirectional_iterator
				t_tData
		>
	auto constexpr
	(	operator --
	)	(	Aggregate<t_tData>
			&	i_rValue
		)
	->	Aggregate<t_tData>&
	{	--i_rValue.Data;
		return i_rValue;
	}

	template
		<	::std::bidirectional_iterator
				t_tData
		>
	auto constexpr
	(	operator --
	)	(	Aggregate<t_tData>
			&	i_rValue
		,	int
		)
	->	Aggregate<t_tData>
	{	auto const vCopy = i_rValue;
		i_rValue.Data--;
		return vCopy;
	}

	template
		<	::std::random_access_iterator
				t_tData
		>
	auto constexpr
	(	operator +=
	)	(	Aggregate<t_tData>
			&	i_rValue
		,	::std::iter_difference_t<t_tData> const
			&	i_rChange
		)
	->	Aggregate<t_tData>&
	{	i_rValue.Data += i_rChange;
		return i_rValue;
	}

	template
		<	::std::random_access_iterator
				t_tData
		>
	auto constexpr
	(	operator +
	)	(	Aggregate<t_tData> const
			&	i_rValue
		,	::std::iter_difference_t<t_tData> const
			&	i_rChange
		)
	->	Aggregate<t_tData>
	{	return
		{	i_rValue.Data
		+	i_rChange
		};
	}

	template
		<	::std::random_access_iterator
				t_tData
		>
	auto constexpr
	(	operator +
	)	(	::std::iter_difference_t<t_tData> const
			&	i_rChange
		,	Aggregate<t_tData> const
			&	i_rValue
		)
	->	Aggregate<t_tData>
	{	return
		{	i_rChange
		+	i_rValue.Data
		};
	}

	template
		<	::std::random_access_iterator
				t_tData
		>
	auto constexpr
	(	operator -=
	)	(	Aggregate<t_tData>
			&	i_rValue
		,	::std::iter_difference_t<t_tData> const
			&	i_rChange
		)
	->	Aggregate<t_tData>&
	{
		i_rValue.Data += i_rChange;
		return i_rValue;
	}

	template
		<	::std::random_access_iterator
				t_tData
		>
	auto constexpr
	(	operator -
	)	(	Aggregate<t_tData> const
			&	i_rValue
		,	::std::iter_difference_t<t_tData> const
			&	i_rChange
		)
	->	Aggregate<t_tData>
	{	return
		{	i_rValue.Data
		-	i_rChange.Data
		};
	}

	template
		<	typename
				t_tLeft
		,	typename
				t_tRight
		>
	auto constexpr
	(	operator <=>
	)	(	Aggregate<t_tLeft> const
			&	i_rLeft
		,	Aggregate<t_tRight> const
			&	i_rRight
		)
	->	decltype
		(	i_rLeft.get()
		<=>	i_rRight.get()
		)
	{	return
		(	i_rLeft.get()
		<=>	i_rRight.get()
		);
	}

	template
		<	typename
				t_tData
		>
	auto constexpr
	(	begin
	)	(	Aggregate<t_tData>
			&	i_rArray
		)
	->	decltype(::std::begin(i_rArray.get()))
	{	return ::std::begin(i_rArray.get());	}

	template
		<	typename
				t_tData
		>
	auto constexpr
	(	begin
	)	(	Aggregate<t_tData> const
			&	i_rArray
		)
	->	decltype(::std::begin(i_rArray.get()))
	{	return ::std::begin(i_rArray.get());	}

	template
		<	typename
				t_tData
		>
	auto constexpr
	(	end
	)	(	Aggregate<t_tData>
			&	i_rArray
		)
	->	decltype(::std::end(i_rArray.get()))
	{	return ::std::end(i_rArray.get());	}

	template
		<	typename
				t_tData
		>
	auto constexpr
	(	end
	)	(	Aggregate<t_tData> const
			&	i_rArray
		)
	->	decltype(::std::end(i_rArray.get()))
	{	return ::std::end(i_rArray.get());	}
}

export namespace
	Meta
{
	using ::Meta::Data::Aggregate;

	template
		<	typename
				t_tValue
		,	USize
				t_nExtent
		>
	using
		ArrayAggregate
	=	Aggregate
		<	TypeEntity
			<	ArrayType
				<	t_tValue
				,	t_nExtent
				>
			>
		>
	;
}
