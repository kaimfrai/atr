export module Meta.Data.Aggregate;

export import Meta.Integer;
export import Meta.Token.Sequence;
export import Meta.Token.Array;
export import Meta.Lex;
export import Meta.Data.Object;

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
	:	Aggregate
		<	TokenizeEntity<t_tData>
		>
	{};

	template
		<	typename
			...	t_tpQualifier
		>
	struct
		Aggregate
		<	Lex::MatchCV
			<	void
			,	t_tpQualifier
				...
			>
		>
	:	Object
		<	typename
				Lex::MatchCV
				<	void
				,	t_tpQualifier
					...
				>
			::	Entity
		>
	{};

	template
		<	typename
				t_tSignature
		,	typename
			...	t_tpQualifier
		>
	struct
		Aggregate
		<	Lex::Func
			<	t_tSignature
			,	t_tpQualifier
				...
			>
		>
	:	Object
		<	typename
				Lex::Func
				<	t_tSignature
				,	t_tpQualifier
					...
				>
			::	Entity
		>
	{};

	template
		<	typename
				t_tData
		,	typename
			...	t_tQualifier
		>
	struct
		Aggregate
		<	Lex::CV
			<	t_tData
			,	t_tQualifier
				...
			>
		>
	:	Object
		<	typename
				Lex::CV
				<	t_tData
				,	t_tQualifier
					...
				>
			::	Entity
		>
	{
		using DataType = typename Lex::CV<t_tData, t_tQualifier...>::Entity;

		auto constexpr
		(	get
		)	()	&
			noexcept
		->	DataType&
		{	return this->Data;	}

		auto constexpr
		(	get
		)	()	const&
			noexcept
		->	DataType const&
		{	return this->Data;	}

		auto constexpr
		(	get
		)	()	&&
			noexcept
		->	::std::remove_cv_t<DataType>
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
				<	DataType&
				,	t_tpArgument
					...
				>
			)
		->	::std::invoke_result_t
			<	DataType&
			,	t_tpArgument
				...
			>
		requires
			::std::is_invocable_v
			<	DataType&
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
				<	DataType const&
				,	t_tpArgument
					...
				>
			)
		->	::std::invoke_result_t
			<	DataType const&
			,	t_tpArgument
				...
			>
		requires
			::std::is_invocable_v
			<	DataType const&
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
				<	DataType&&
				,	t_tpArgument
					...
				>
			)
		->	::std::invoke_result_t
			<	DataType&&
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
		<	typename
				t_tEntity
		,	typename
			...	t_tpCV
		>
	struct
		Aggregate
		<	Lex::MatchCVPointer
			<	t_tEntity
			,	t_tpCV
				...
			>
		>
	:	Object
		<	typename
				Lex::MatchCVPointer
				<	t_tEntity
				,	t_tpCV
					...
				>
			::	Entity
		>
	{
		using DataType = typename Lex::MatchCVPointer<t_tEntity, t_tpCV...>::Entity;
		using value_type = ::std::remove_pointer_t<DataType>;
		using difference_type = SSize;
		using iterator_concept = ::std::contiguous_iterator_tag;

		auto constexpr
		(	get
		)	()	&
			noexcept
		->	DataType&
		{	return this->Data;	}

		auto constexpr
		(	get
		)	()	const&
			noexcept
		->	DataType const&
		{	return this->Data;	}

		auto constexpr
		(	get
		)	()	&&
			noexcept
		->	::std::remove_cv_t<DataType>
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
		->	::std::remove_cv_t<DataType>
		{	return this->Data;	}

		auto constexpr
		(	operator []
		)	(	difference_type
					i_nDifference
			)	const
			noexcept
		->	::std::iter_reference_t<DataType>
		{	return
			this->Data
			[	i_nDifference
			];
		}
	};

	template
		<	typename
				t_tData
		,	typename
				t_tCategory
		>
	struct
		Aggregate
		<	Lex::Ref
			<	t_tData
			,	t_tCategory
			>
		>
	:	Object
		<	typename
				Lex::Ref
				<	t_tData
				,	t_tCategory
				>
			::	Entity
		>
	{
		using DataType = typename Lex::Ref<t_tData, t_tCategory>::Entity;

		auto constexpr
		(	get
		)	()	const
			noexcept
		->	DataType
		{	return static_cast<DataType>(*this->Data);	}

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
				<	DataType
				,	t_tpArgument
					...
				>
			)
		->	::std::invoke_result_t
			<	DataType
			,	t_tpArgument
				...
			>
		requires
			::std::is_invocable_v
			<	DataType
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
	)	(	Aggregate
			<	Lex::Ref
				<	t_tData
				,	Token::LRef
				>
			>
				i_vValue
		)
	->	typename t_tData::Entity*
	{	return i_vValue.Data;	}

	template
		<	typename
				t_tElement
		,	typename
			...	t_tpQualifier
		>
	struct
		Aggregate
		<	Lex::MatchCVArray
			<	t_tElement
			,	0uz
			,	t_tpQualifier
				...
			>
		>
	:	Object
		<	typename
				Lex::MatchCVArray
				<	t_tElement
				,	0uz
				,	t_tpQualifier
					...
				>
			::	Entity
		>
	{
		using ElementType = typename t_tElement::Entity;
		static_assert
		(	not ::std::is_bounded_array_v<ElementType>
		,	"Multidimensional arrays are not supported!"
		);

		using value_type = ElementType;
		using size_type = USize;
		using difference_type = SSize;
		using reference = ElementType&;
		using const_reference = ElementType const&;
		using pointer = ElementType*;
		using const_pointer = ElementType const*;
		using iterator = pointer;
		using const_iterator = const_pointer;

		auto constexpr
		(	get
		)	()	&
			noexcept
		->	ElementType(&)[]
		=	delete;

		auto constexpr
		(	get
		)	()	const&
			noexcept
		->	ElementType const(&)[]
		=	delete;

		auto constexpr
		(	get
		)	()	&&
			noexcept
		->	ElementType(&&)[]
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
		,	typename
			...	t_tpQualifier
		>
	struct
		Aggregate
		<	Lex::MatchCVArray
			<	t_tElement
			,	t_nExtent
			,	t_tpQualifier
				...
			>
		>
	:	Object
		<	typename
				Lex::MatchCVArray
				<	t_tElement
				,	t_nExtent
				,	t_tpQualifier
					...
				>
			::	Entity
		>
	{
		using ElementType = typename t_tElement::Entity;

		static_assert
		(	not ::std::is_bounded_array_v<ElementType>
		,	"Multidimensional arrays are not supported!"
		);

		using value_type = ElementType;
		using size_type = USize;
		using difference_type = SSize;
		using reference = ElementType&;
		using const_reference = ElementType const&;
		using pointer = ElementType*;
		using const_pointer = ElementType const*;
		using iterator = pointer;
		using const_iterator = const_pointer;

		auto constexpr
		(	get
		)	()	&
			noexcept
		->	ElementType(&)[t_nExtent]
		{	return this->Data;	}

		auto constexpr
		(	get
		)	()	const&
			noexcept
		->	ElementType const(&)[t_nExtent]
		{	return this->Data;	}

		auto constexpr
		(	get
		)	()	&&
			noexcept
		->	ElementType(&&)[t_nExtent]
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
		,	typename
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