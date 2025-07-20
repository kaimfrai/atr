export module Meta.Data.Aggregate.UnboundedArray;

import Meta.Data.Aggregate.Primary;
import Meta.Data.Object;
import Meta.Lex.Array;
import Meta.Lex.CV;
import Meta.Token.Mutable;
import Meta.Token.Const;
import Meta.Token.Type;
import Meta.Size;

import std;

using ::Meta::USize;

export namespace
	Meta::Data
{
	using ::Meta::Data::Aggregate;

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
		->	ElementType(&)[]
		=	delete;

		auto constexpr inline
		(	get
		)	()	const&
			noexcept
		->	ConstElementType(&)[]
		=	delete;

		auto constexpr inline
		(	get
		)	()	&&
			noexcept
		->	ElementType(&&)[]
		=	delete;

		explicit(false) constexpr inline
		(	operator
			decltype(auto)
		)	()	&
			noexcept
		{	return ::std::declval<ElementType(&)[]>();	}

		explicit(false) constexpr inline
		(	operator
			decltype(auto)
		)	()	const&
			noexcept
		{	return ::std::declval<ConstElementType(&)[]>();	}

		explicit(false) constexpr inline
		(	operator
			decltype(auto)
		)	()	&&
			noexcept
		{	return ::std::declval<ElementType(&&)[]>();	}

		[[nodiscard]]
		auto static constexpr inline
		(	size
		)	()
		->	size_type
		{	return 0uz;	}

		[[nodiscard]]
		auto static constexpr inline
		(	max_size
		)	()
		->	size_type
		{	return 0uz;	}

		[[nodiscard]]
		auto static constexpr inline
		(	empty
		)	()
		->	bool
		{	return true;	}

		[[noreturn]]
		auto constexpr inline
		(	operator[]
		)	(	USize
			)	&
		->	reference
		{	((void)"Index out of bounds!", std::unreachable());	}

		[[noreturn]]
		auto constexpr inline
		(	operator[]
		)	(	USize
			)	const&
		->	const_reference
		{	((void)"Index out of bounds!", std::unreachable());	}

		[[noreturn]]
		auto constexpr inline
		(	operator[]
		)	(	USize
			)	&&
		->	value_type
		{	((void)"Index out of bounds!", std::unreachable());	}

		auto friend constexpr inline
		(	operator+
		)	(	Aggregate&
			)
		->	pointer
		{	return nullptr;	}

		auto friend constexpr inline
		(	operator+
		)	(	Aggregate const&
			)
		->	const_pointer
		{	return nullptr;	}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	&
		->	iterator
		{	return { nullptr };	}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const&
		->	const_iterator
		{	return { nullptr };	}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	&
		->	pointer
		{	return { nullptr };	}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	const&
		->	const_pointer
		{	return { nullptr };	}

		auto constexpr inline
		(	data
		)	()	&
		->	pointer
		{	return nullptr;	}

		auto constexpr inline
		(	data
		)	()	const&
		->	const_pointer
		{	return nullptr;	}
	};
}
