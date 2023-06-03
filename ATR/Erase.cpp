export module ATR.Erase;

import Meta.Memory.PointerCast;

import Std;

using ::Meta::Memory::PointerCast;

export namespace
	ATR
{
	/// erases type information from an argument
	template
		<	typename
				t_tEntity
		>
	[[nodiscard]]
	auto constexpr inline
	(	ForwardErased
	)	(	t_tEntity
			&&	i_rObject
		)
		noexcept
	->	decltype(auto)
	{	if	constexpr
			(	::std::is_scalar_v
				<	t_tEntity
				>
			)
		{
			if	constexpr
				(	::std::is_pointer_v
					<	t_tEntity
					>
				)
			{	return
				PointerCast<::std::byte>
				(	i_rObject
				);
			}
			else
			if	constexpr
				(	::std::is_enum_v
					<	t_tEntity
					>
				)
			{	return
				::std::to_underlying
				(	i_rObject
				);
			}
			else
			{	/// TODO: erase value information:
				/// decomposition into fundamental types of the same properties
				return
					i_rObject
				;
			}
		}
		else
		{	auto const
				aByteArray
			=	PointerCast<::std::byte[]>
				(	::std::addressof
					(	i_rObject
					)
				)
			;

			if	constexpr
				(	::std::is_lvalue_reference_v
					<	t_tEntity
					>
				)
			{
				return
				*	aByteArray
				;
			}
			else
			{	return
				::std::move
				(	*	aByteArray
				);
			}
		}
	}

	template
		<	typename
				t_tEntity
		>
	using
		ErasedType
	=	decltype
		(	ForwardErased
			(	::std::declval
				<	t_tEntity
				>()
			)
		)
	;
}
