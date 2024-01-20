export module Meta.Data.Aggregate.Pointer;

import Meta.Data.Aggregate.Primary;
import Meta.Data.Object;
import Meta.Lex.Pointer;
import Meta.Token.Const;
import Meta.Token.Mutable;
import Meta.Token.Type;

import Std;

export namespace
	Meta::Data
{
	using ::Meta::Data::Aggregate;

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
		using DataType = TypeEntity<Lex::MatchCVPointer<t_tEntity, t_tpCV...>{} - Mutable>;
		using ConstDataType = TypeEntity<Lex::MatchCVPointer<t_tEntity, t_tpCV...>{} + Const - Mutable>;
		using value_type = ::std::remove_pointer_t<DataType>;
		using difference_type = ::std::ptrdiff_t;
		using iterator_concept = ::std::contiguous_iterator_tag;

		auto constexpr inline
		(	get
		)	()	&
			noexcept
		->	DataType&
		{	return this->Data;	}

		auto constexpr inline
		(	get
		)	()	const&
			noexcept
		->	ConstDataType&
		{	return this->Data;	}

		auto constexpr inline
		(	get
		)	()	&&
			noexcept
		->	::std::remove_cv_t<DataType>
		{	return ::std::move(*this).Data;	}

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

		auto constexpr inline
		(	operator->
		)	()	const
			noexcept
		->	::std::remove_cv_t<DataType>
		{	return this->Data;	}

		auto constexpr inline
		(	operator[]
		)	(	difference_type
					i_vDifference
			)	const
			noexcept
		->	::std::iter_reference_t<DataType>
		{	return
			this->Data
			[	i_vDifference
			];
		}
	};
}
