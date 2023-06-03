export module Meta.Data.Aggregate;

import Meta.Data.Aggregate.Pointer;
import Meta.Data.Aggregate.CV;
import Meta.Data.Aggregate.BoundedArray;
import Meta.Data.Aggregate.UnboundedArray;
import Meta.Data.Aggregate.Function;
import Meta.Data.Aggregate.Reference;
import Meta.Data.Aggregate.Void;
import Meta.Token.Type;
import Meta.Size;

import Std;

using ::Meta::USize;

export namespace
	Meta::Data
{
	using ::Meta::Data::Aggregate;

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
	(	operator+
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
	(	operator+
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
	(	operator*
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
	(	operator++
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
	(	operator++
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
	(	operator--
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
	(	operator--
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
	(	operator+=
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
	(	operator+
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
	(	operator+
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
	(	operator-=
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
	(	operator-
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
	(	operator==
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
	(	operator==
	)	(	Aggregate<t_tElement[t_nExtent]> const
			&	i_rLeft
		,	Aggregate<t_tElement[t_nExtent]> const
			&	i_rRight
		)
	->	bool
	{	using ::std::begin;
		using ::std::end;
		return
		std::equal
		(	begin(i_rLeft)
		,	end(i_rLeft).base()
		,	begin(i_rRight)
		,	end(i_rRight).base()
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
	(	operator==
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
	(	operator<=>
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
}
