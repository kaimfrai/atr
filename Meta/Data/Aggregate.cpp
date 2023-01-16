export module Meta.Data.Aggregate;

export import Meta.Data.Object;

export import Meta.Lex;
import Meta.Buffer.Iterator;
import Meta.Size;
import Meta.Token.Reference;
import Meta.Token.Function;
import Meta.Token.Index;
import Meta.Token.Sequence;
import Meta.Token.CV;
import Meta.Token.Type;
import Meta.Token.Array;

import Std;

using ::Meta::Buffer::Iterator;
using ::Meta::Buffer::Sentinel;

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
		using DataType = TypeEntity<Lex::CV<t_tData, t_tQualifier...>::Type - Mutable>;
		using ConstDataType = TypeEntity<Lex::CV<t_tData, t_tQualifier...>::Type + Const - Mutable>;

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
		->	ConstDataType&
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
				<	ConstDataType&
				,	t_tpArgument
					...
				>
			)
		->	::std::invoke_result_t
			<	ConstDataType&
			,	t_tpArgument
				...
			>
		requires
			::std::is_invocable_v
			<	ConstDataType&
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
			<	DataType&&
			,	t_tpArgument
				...
			>
		{	return
			{	::std::invoke
				(	::std::move(get())
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
		using DataType = TypeEntity<Lex::MatchCVPointer<t_tEntity, t_tpCV...>::Type - Mutable>;
		using ConstDataType = TypeEntity<Lex::MatchCVPointer<t_tEntity, t_tpCV...>::Type + Const - Mutable>;
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
		->	ConstDataType&
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
		using ElementType = TypeEntity<Lex::CV<t_tElement, t_tpQualifier...>::Type - Mutable>;
		using ConstElementType = TypeEntity<Lex::CV<t_tElement, t_tpQualifier...>::Type + Const - Mutable>;
		static_assert
		(	not ::std::is_bounded_array_v<ElementType>
		,	"Multidimensional arrays are not supported!"
		);

		using value_type = ElementType;
		using size_type = USize;
		using difference_type = SSize;
		using reference = ElementType&;
		using const_reference = ConstElementType&;
		using pointer = ElementType*;
		using const_pointer = ConstElementType*;
		using iterator = Iterator<value_type>;
		using const_iterator = Iterator<value_type const>;

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
		->	ConstElementType(&)[]
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
		{	return ::std::declval<ElementType(&)[]>();	}

		constexpr
		(	operator decltype(auto)
		)	()	const&
			noexcept
		{	return ::std::declval<ConstElementType(&)[]>();	}

		constexpr
		(	operator decltype(auto)
		)	()	&&
			noexcept
		{	return ::std::declval<ElementType(&&)[]>();	}

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
		{	((void)"Index out of bounds!", std::unreachable());	}

		[[noreturn]]
		auto constexpr
		(	operator[]
		)	(	USize
			)	const&
		->	const_reference
		{	((void)"Index out of bounds!", std::unreachable());	}

		[[noreturn]]
		auto constexpr
		(	operator[]
		)	(	USize
			)	&&
		->	value_type
		{	((void)"Index out of bounds!", std::unreachable());	}

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
		auto constexpr
		(	begin
		)	()	&
		->	iterator
		{	return { nullptr };	}

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	const&
		->	const_iterator
		{	return { nullptr };	}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	&
		->	Sentinel<value_type>
		{	return { nullptr };	}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	const&
		->	Sentinel<value_type const>
		{	return { nullptr };	}

		auto constexpr
		(	data
		)	()	&
		->	pointer
		{	return nullptr;	}

		auto constexpr
		(	data
		)	()	const&
		->	const_pointer
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
		using ElementType = TypeEntity<Lex::CV<t_tElement, t_tpQualifier...>::Type - Mutable>;
		using ConstElementType = TypeEntity<Lex::CV<t_tElement, t_tpQualifier...>::Type + Const - Mutable>;

		static_assert
		(	not ::std::is_bounded_array_v<ElementType>
		,	"Multidimensional arrays are not supported!"
		);

		using value_type = ElementType;
		using size_type = USize;
		using difference_type = SSize;
		using reference = ElementType&;
		using const_reference = ConstElementType&;
		using pointer = ElementType*;
		using const_pointer = ConstElementType*;
		using iterator = Iterator<value_type>;
		using const_iterator = Iterator<value_type const>;

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
		->	ConstElementType(&)[t_nExtent]
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
			noexcept
		->	size_type
		{	return t_nExtent;	}

		[[nodiscard]]
		static auto constexpr
		(	ssize
		)	()
			noexcept
		->	difference_type
		{	return static_cast<difference_type>(t_nExtent);	}

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

		auto constexpr
		(	data
		)	()	&
			noexcept
		->	pointer
		{	return this->Data;	}

		auto constexpr
		(	data
		)	()	const&
			noexcept
		->	const_pointer
		{	return this->Data;	}

		auto constexpr
		(	data
		)	()	&&
		=	delete;

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	&
			noexcept
		->	iterator
		{	return { data() };	}

		[[nodiscard]]
		auto constexpr
		(	begin
		)	()	const&
			noexcept
		->	const_iterator
		{	return { data() };	}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	&
			noexcept
		->	Sentinel<value_type>
		{	return begin() + ssize();	}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	const&
			noexcept
		->	Sentinel<value_type const>
		{	return begin() + ssize();	}
	};

	template
		<	typename
				t_tTarget
		,	typename
				t_tSource
		>
	[[nodiscard]]
	auto constexpr
	(	MakeArrayAggregate
	)	(	Iterator<t_tSource const>
				i_aSource
		)
		noexcept
	->	Aggregate<t_tTarget>
	{
		auto constexpr
			vExtent
		=	::std::extent_v<t_tTarget>
		;
		using
			tElement
		=	::std::remove_extent_t<t_tTarget>
		;

		return
		[	i_aSource
		]	<	USize
				...	t_npIndex
			>(	IndexToken<t_npIndex...>
			)
		->	Aggregate<t_tTarget>
		{	return
			{	static_cast<tElement>
				(	i_aSource
					[	t_npIndex
					]
				)
				...
			};
		}(	Sequence<vExtent>
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
	[[nodiscard]]
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
	[[nodiscard]]
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
	[[nodiscard]]
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
	[[nodiscard]]
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
	[[nodiscard]]
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
	[[nodiscard]]
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
				t_tElement
		>
	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	Aggregate<t_tElement[]>
		,	Aggregate<t_tElement[]>
		)
	->	bool
	{	return true;	}

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		>
	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	Aggregate<t_tElement[t_nExtent]> const
			&	i_rLeft
		,	Aggregate<t_tElement[t_nExtent]> const
			&	i_rRight
		)
	->	bool
	{	return
		std::ranges::equal
		(	i_rLeft
		,	i_rRight
		);
	}

	template
		<	typename
				t_tLeft
		,	typename
				t_tRight
		>
	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	Aggregate<t_tLeft> const
			&	i_rLeft
		,	Aggregate<t_tRight> const
			&	i_rRight
		)
	->	decltype
		(	i_rLeft.get()
		==	i_rRight.get()
		)
	{	return
		(	i_rLeft.get()
		==	i_rRight.get()
		);
	}

	template
		<	typename
				t_tLeft
		,	typename
				t_tRight
		>
	[[nodiscard]]
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
	[[nodiscard]]
	auto constexpr
	(	data
	)	(	Aggregate<t_tData>
			&	i_rArray
		)
	->	decltype(::std::data(i_rArray.get()))
	{	return ::std::data(i_rArray.get());	}

	template
		<	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	data
	)	(	Aggregate<t_tData> const
			&	i_rArray
		)
	->	decltype(::std::data(i_rArray.get()))
	{	return ::std::data(i_rArray.get());	}
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
		<	ArrayEntity
			<	t_tValue
			,	t_nExtent
			>
		>
	;
}
