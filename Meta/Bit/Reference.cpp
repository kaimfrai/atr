export module Meta.Bit.Reference;

import Meta.Bit.Access;
import Meta.Bit.Index;
import Meta.Memory.Constraint;

import Std;

export namespace
	Meta::Bit
{
	template
		<	typename
				t_tValue
		,	ByteIndex
				t_vOffset
		>
	struct
		Reference final
	{
		using
			BitAccess
		=	Access
			<	Memory::BitSize_Of
				<	t_tValue
				>
			,	t_vOffset
			>
		;
		using
			value_type
		=	::std::remove_cv_t
			<	t_tValue
			>
		;

		using
			BufferType
		=	::std::conditional_t
			<	::std::is_const_v
				<	t_tValue
				>
			,	::std::byte const
			,	::std::byte
			>
		;

		[[nodiscard]]
		auto static constexpr
		(	Read
		)	(	::std::byte const
				*	i_aUnderlyingArray
			)
			noexcept
		->	value_type
		{	return
			static_cast<value_type>
			(	BitAccess::ReadField
				(	i_aUnderlyingArray
				,	t_vOffset
				)
			);
		}

		auto static constexpr
		(	Write
		)	(	value_type
					i_vValue
			,	::std::byte
				*	i_aUnderlyingArray
			)
			noexcept
		->	void
		requires
			(	not
				::std::is_const_v
				<	t_tValue
				>
			)
		{	return
			BitAccess::WriteField
			(	i_vValue
			,	i_aUnderlyingArray
			,	t_vOffset
			);
		}

		BufferType
		*	const
			m_aUnderlyingArray
		;

		[[nodiscard]]
		auto constexpr
		(	get
		)	()	const
			noexcept
		->	value_type
		{	return
			Read
			(	m_aUnderlyingArray
			);
		}

		[[nodiscard]]
		explicit(false) constexpr
		(	operator
			value_type
		)	()	const
			noexcept
		{	return
			get
			();
		}

		auto constexpr
		(	operator=
		)	(	value_type
					i_vValue
			)	&
			noexcept
		->	Reference&
		requires
			(	not
				::std::is_const_v
				<	t_tValue
				>
			)
		{
			Write
			(	i_vValue
			,	m_aUnderlyingArray
			);
			return *this;
		}

		auto constexpr
		(	operator=
		)	(	value_type
					i_vValue
			)	&&
			noexcept
		->	Reference&&
		requires
			(	not
				::std::is_const_v
				<	t_tValue
				>
			)
		{	return
			::std::move
			(	*this
			=	i_vValue
			);
		}

		[[nodiscard]]
		auto friend constexpr
		(	operator==
		)	(	Reference
					i_rReference
			,	value_type
					i_vValue
			)
			noexcept
		->	bool
		{	return
				i_rReference
				.	get
					()
			==	i_vValue
			;
		}

		[[nodiscard]]
		auto friend constexpr
		(	operator<=>
		)	(	Reference
					i_rReference
			,	value_type
					i_vValue
			)
			noexcept
		->	bool
		{	return
				i_rReference
				.	get()
			<=>	i_vValue
			;
		}
	};
}
