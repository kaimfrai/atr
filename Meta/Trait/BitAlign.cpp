export module Meta.Trait.BitAlign;

import Meta.Token.Specifier;
import Meta.Token.Type;

import Meta.Bit.Field;
import Meta.Memory.Size;
import Meta.Memory.Alignment;

import Std;

namespace
	Meta::Trait
{
	template
		<	typename
				t_tProto
		>
	concept
		ProtoAligned
	=	requires
		{
			alignof(t_tProto);
		}
	;
}

export namespace
	Meta::Trait
{
	struct
		BitAlign_Of
	{
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeID
			)
			noexcept
		->	Memory::Alignment
		{	return 0_align;	}

		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<bool>
			)
			noexcept
		->	Memory::Alignment
		{	return 1_align;	}

		template
			<	ProtoAligned
					t_tMutable
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mut<t_tMutable>>
			)
			noexcept
		->	Memory::Alignment
		{	return operator()(Type<t_tMutable>);	}

		template
			<	BitSize
					t_nSize
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<Bit::Field<t_nSize>>
			)
			noexcept
		->	Memory::Alignment
		{	return
				(	Bit::Field<t_nSize>
				::	IsFullWidthInteger
				)
			?	Memory::Alignment
				{	t_nSize
				}
			:	1_align
			;
		}

		template
			<	ProtoAligned
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)
			noexcept
		->	Memory::Alignment
		{
			if	constexpr
				(	::std::is_const_v<t_tEntity>
				or	::std::is_volatile_v<t_tEntity>
				)
			{	return
				operator()
				(	Type
					<	::std::remove_cv_t
						<	t_tEntity
						>
					>
				);
			}
			else
			if	constexpr
				(	::std::is_array_v
					<	t_tEntity
					>
				)
			{	return
				operator()
				(	Type
					<	::std::remove_all_extents_t
						<	t_tEntity
						>
					>
				);
			}
			else
			{	// necessary to check unions
				struct
					Wrapper
				{
					[[no_unique_address]]
					t_tEntity _;
				};
				return
				Memory::Alignment
				{	not
					::std::is_empty_v
					<	Wrapper
					>
				*	alignof(t_tEntity)
				};
			}
		}
	};
}

export namespace
	Meta
{
	Trait::BitAlign_Of const extern
		BitAlign_Of
	;
}
