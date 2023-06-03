export module Meta.Data.Aggregate.Reference;

import Meta.Data.Aggregate.Primary;
import Meta.Data.Object;
import Meta.Lex.Reference;
import Meta.Token.LRef;

import Std;

export namespace
	Meta::Data
{
	using ::Meta::Data::Aggregate;

	template
		<	typename
				t_tData
		,	typename
				t_tCategory
		>
	struct
		Aggregate
		<	Lex::MatchRef
			<	t_tData
			,	t_tCategory
			>
		>
	:	Object
		<	typename
				Lex::MatchRef
				<	t_tData
				,	t_tCategory
				>
			::	Entity
		>
	{
		using DataType = typename Lex::MatchRef<t_tData, t_tCategory>::Entity;

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

		explicit(false) constexpr
		(	operator
			decltype(auto)
		)	()	const
			noexcept
		{	return get();	}
	};

	template
		<	typename
				t_tData
		>
	auto constexpr
	(	operator&
	)	(	Aggregate
			<	Lex::MatchRef
				<	t_tData
				,	Token::LRef
				>
			>
				i_vValue
		)
	->	typename t_tData::Entity*
	{	return i_vValue.Data;	}
}
