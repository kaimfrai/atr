export module Meta.Data.Aggregate.BoundedArray;

import Meta.Data.Aggregate.Primary;
import Meta.Data.Object;
import Meta.Lex.Array;
import Meta.Lex.CV;
import Meta.Token.Mutable;
import Meta.Token.Type;
import Meta.Token.Const;
import Meta.Size;

import Std;


export namespace
	Meta::Data
{
	using ::Meta::Data::Aggregate;

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
		using ElementType = TypeEntity<Lex::MatchCV<t_tElement, t_tpQualifier...>{} - Mutable>;
		using ConstElementType = TypeEntity<Lex::MatchCV<t_tElement, t_tpQualifier...>{} + Const - Mutable>;

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
		using iterator = pointer;
		using const_iterator = const_pointer;

		auto constexpr
		(	get
		)	()	&
			noexcept
		->	::std::array<ElementType, t_nExtent>&
		{	return this->Data;	}

		auto constexpr
		(	get
		)	()	const&
			noexcept
		->	::std::array<ElementType, t_nExtent> const&
		{	return this->Data;	}

		auto constexpr
		(	get
		)	()	&&
			noexcept
		->	::std::array<ElementType, t_nExtent>
		{	return ::std::move(this->Data);	}

		explicit(false) constexpr
		(	operator
			decltype(auto)
		)	()	&
			noexcept
		{	return get();	}

		explicit(false) constexpr
		(	operator
			decltype(auto)
		)	()	const&
			noexcept
		{	return get();	}

		explicit(false) constexpr
		(	operator
			decltype(auto)
		)	()	&&
			noexcept
		{	return ::std::move(*this).get();	}

		[[nodiscard]]
		auto static constexpr
		(	size
		)	()
			noexcept
		->	size_type
		{	return t_nExtent;	}

		[[nodiscard]]
		auto static constexpr
		(	ssize
		)	()
			noexcept
		->	difference_type
		{	return static_cast<difference_type>(t_nExtent);	}

		[[nodiscard]]
		auto static constexpr
		(	max_size
		)	()
		->	size_type
		{	return t_nExtent;	}

		[[nodiscard]]
		auto static constexpr
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
		{	return this->Data.data();	}

		auto constexpr
		(	data
		)	()	const&
			noexcept
		->	const_pointer
		{	return this->Data.data();	}

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
		->	iterator
		{	return begin() + ssize();	}

		[[nodiscard]]
		auto constexpr
		(	end
		)	()	const&
			noexcept
		->	const_iterator
		{	return begin() + ssize();	}
	};
}
