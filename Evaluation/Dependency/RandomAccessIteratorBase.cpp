export module Evaluation.Dependency.RandomAccessIteratorBase;

import Std;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tReference
		,	typename
				t_tValue
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
		=	t_tValue
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
				)
			;
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
				+=	-
					i_vDifference
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
				,	i_rThis
					-	difference_type
						{	1
						}
				)
			;
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
				*
				(	i_rThis
				+	i_vIndex
				)
			;
		}
	};
}
