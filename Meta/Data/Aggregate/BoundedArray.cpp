export module Meta.Data.Aggregate.BoundedArray;

import Meta.Data.Aggregate.Primary;
import Meta.Data.Object;
import Meta.Lex.Array;
import Meta.Lex.CV;
import Meta.Token.Mutable;
import Meta.Token.Type;
import Meta.Token.Const;
import Meta.Size;

import std;


export namespace
	Meta::Data
{
	using ::Meta::Data::Aggregate;

	template
		<	typename
				t_tElement
		,	USize
				t_vExtent
		,	typename
			...	t_tpQualifier
		>
	struct
		Aggregate
		<	Lex::MatchCVArray
			<	t_tElement
			,	t_vExtent
			,	t_tpQualifier
				...
			>
		>
	:	Object
		<	typename
				Lex::MatchCVArray
				<	t_tElement
				,	t_vExtent
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

		auto constexpr inline
		(	get
		)	()	&
			noexcept
		->	::std::array<ElementType, t_vExtent>&
		{	return this->Data;	}

		auto constexpr inline
		(	get
		)	()	const&
			noexcept
		->	::std::array<ElementType, t_vExtent> const&
		{	return this->Data;	}

		auto constexpr inline
		(	get
		)	()	&&
			noexcept
		->	::std::array<ElementType, t_vExtent>
		{	return ::std::move(this->Data);	}

		explicit(false) constexpr inline
		(	operator
			decltype(auto)
		)	()	&
			noexcept
		{	return get();	}

		explicit(false) constexpr inline
		(	operator
			decltype(auto)
		)	()	const&
			noexcept
		{	return get();	}

		explicit(false) constexpr inline
		(	operator
			decltype(auto)
		)	()	&&
			noexcept
		{	return ::std::move(*this).get();	}

		[[nodiscard]]
		auto static constexpr inline
		(	size
		)	()
			noexcept
		->	size_type
		{	return t_vExtent;	}

		[[nodiscard]]
		auto static constexpr inline
		(	ssize
		)	()
			noexcept
		->	difference_type
		{	return static_cast<difference_type>(t_vExtent);	}

		[[nodiscard]]
		auto static constexpr inline
		(	max_size
		)	()
		->	size_type
		{	return t_vExtent;	}

		[[nodiscard]]
		auto static constexpr inline
		(	empty
		)	()
		->	bool
		{	return false;	}

		auto constexpr inline
		(	operator[]
		)	(	USize
					i_vIndex
			)	&
		->	reference
		{	return this->Data[i_vIndex];	}

		auto constexpr inline
		(	operator[]
		)	(	USize
					i_vIndex
			)	const&
		->	const_reference
		{	return this->Data[i_vIndex];	}

		auto constexpr inline
		(	operator[]
		)	(	USize
					i_vIndex
			)	&&
		->	value_type
		{	return ::std::move(this->Data)[i_vIndex];	}

		auto constexpr inline
		(	data
		)	()	&
			noexcept
		->	pointer
		{	return this->Data.data();	}

		auto constexpr inline
		(	data
		)	()	const&
			noexcept
		->	const_pointer
		{	return this->Data.data();	}

		auto constexpr inline
		(	data
		)	()	&&
		=	delete;

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	&
			noexcept
		->	iterator
		{	return { data() };	}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const&
			noexcept
		->	const_iterator
		{	return { data() };	}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	&
			noexcept
		->	iterator
		{	return begin() + ssize();	}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	const&
			noexcept
		->	const_iterator
		{	return begin() + ssize();	}
	};
}
