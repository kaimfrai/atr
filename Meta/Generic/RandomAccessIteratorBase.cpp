export module Meta.Generic.RandomAccessIteratorBase;

import Std;

export namespace
	Meta::Generic
{
	template
		<	typename
				t_tProto
		>
	concept
		ProtoReferenceProxy
	=	requires
		{	typename
				t_tProto
			::	ReferencedValue
			;
		}
	;

	template
		<	ProtoReferenceProxy
				t_tReference
		,	typename
				t_tDifference
			=	::std::ptrdiff_t
		>
	struct
		RandomAccessIteratorBase
	{
		using
			iterator_category
		=	::std::random_access_iterator_tag
		;

		using
			reference
		=	t_tReference
		;
		using
			value_type
		=	t_tReference
			::	ReferencedValue
		;
		using
			difference_type
		=	t_tDifference
		;

		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	auto
					i_aIterator
			,	difference_type
					i_vDifference
			)
			noexcept
		->	decltype(i_aIterator)
		{	return
				i_aIterator
			+=	i_vDifference
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	difference_type
					i_vDifference
			,	auto
					i_aIterator
			)
			noexcept
		->	decltype(i_aIterator)
		{	return
				i_aIterator
			+=	i_vDifference
			;
		}

		auto constexpr inline
		(	operator++
		)	(	this auto
				&	i_rThis
			)
			noexcept
		->	decltype(i_rThis)
		{	return
				i_rThis
			+=	difference_type
				{	1
				}
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator++
		)	(	this auto
				&	i_rThis
			,	int
			)
			noexcept
		->	decltype(auto(i_rThis))
		{	return
			::std::exchange
			(	i_rThis
			,		i_rThis
				+	difference_type
					{	1
					}
			);
		}

		auto constexpr inline
		(	operator-=
		)	(	this auto
				&	i_rThis
			,	difference_type
					i_vDifference
			)
			noexcept
		->	decltype(i_rThis)
		{	return
				i_rThis
			+=	-	i_vDifference
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator-
		)	(	auto
					i_aIterator
			,	difference_type
					i_vDifference
			)
			noexcept
		->	decltype(i_aIterator)
		{	return
				i_aIterator
			-=	i_vDifference
			;
		}

		auto constexpr inline
		(	operator--
		)	(	this auto
				&	i_rThis
			)
			noexcept
		->	decltype(i_rThis)
		{	return
				i_rThis
			-=	difference_type
				{	1
				}
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator--
		)	(	this auto
				&	i_rThis
			,	int
			)
			noexcept
		->	decltype(auto(i_rThis))
		{	return
			::std::exchange
			(	i_rThis
			,		i_rThis
				-	difference_type
					{	1
					}
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	this auto const
				&	i_rThis
			,	difference_type
					i_vIndex
			)
			noexcept
		->	reference
		{	return
			*	(	i_rThis
				+	i_vIndex
				)
			;
		}
	};

	template
		<	ProtoReferenceProxy
				t_tReference
		>
	struct
		ImplicitReference
	:	t_tReference
	{
		explicit(false) constexpr inline
		(	ImplicitReference
		)	(	t_tReference
					i_rReference
			)
			noexcept
		:	t_tReference
			{	i_rReference
			}
		{}

		explicit(false) constexpr inline
		(	ImplicitReference
		)	(	typename t_tReference::ReferencedValue const
				&	i_rValue
			)
			noexcept
		:	t_tReference
			{	i_rValue
				.	operator
					t_tReference
					()
			}
		{}
	};
}

export template
	<	::Meta::Generic::ProtoReferenceProxy
			t_tReference
	>
struct
	::std::common_type
	<	typename
			t_tReference
		::	ReferencedValue
	,	t_tReference
	>
:	::std::type_identity
	<	::Meta::Generic::ImplicitReference
		<	t_tReference
		>
	>
{};

export template
	<	::Meta::Generic::ProtoReferenceProxy
			t_tReference
	>
struct
	::std::common_type
	<	t_tReference
	,	typename
			t_tReference
		::	ReferencedValue
	>
:	::std::type_identity
	<	::Meta::Generic::ImplicitReference
		<	t_tReference
		>
	>
{};
