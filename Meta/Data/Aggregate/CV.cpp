export module Meta.Data.Aggregate.CV;

import Meta.Data.Aggregate.Primary;
import Meta.Data.Object;
import Meta.Lex.CV;
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
				t_tData
		,	typename
			...	t_tQualifier
		>
	struct
		Aggregate
		<	Lex::MatchCV
			<	t_tData
			,	t_tQualifier
				...
			>
		>
	:	Object
		<	typename
				Lex::MatchCV
				<	t_tData
				,	t_tQualifier
					...
				>
			::	Entity
		>
	{
		using DataType = TypeEntity<Lex::MatchCV<t_tData, t_tQualifier...>{} - Mutable>;
		using ConstDataType = TypeEntity<Lex::MatchCV<t_tData, t_tQualifier...>{} + Const - Mutable>;

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

		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr inline
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
		auto constexpr inline
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
		auto constexpr inline
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
		auto constexpr inline
		(	operator->
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

		auto constexpr inline
		(	operator->
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

		auto constexpr inline
		(	operator->
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
}
