export module Meta.Data.Aggregate.UnboundedArray;

import Meta.Data.Aggregate.Primary;
import Meta.Data.Object;
import Meta.Lex.Array;
import Meta.Lex.CV;
import Meta.Buffer.Iterator;
import Meta.Token.Mutable;
import Meta.Token.Const;
import Meta.Token.Type;
import Meta.Size;

import Std;

using ::Meta::USize;
using ::Meta::Buffer::Iterator;
using ::Meta::Buffer::Sentinel;

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
}