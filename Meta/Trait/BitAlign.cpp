export module Meta.Trait.BitAlign;

import Meta.Token.Specifier;
import Meta.Token.Type;

import Meta.Bit.Field;
import Meta.Memory.Size;

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
		->	BitSize
		{	return {};	}

		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<bool>
			)
			noexcept
		->	BitSize
		{	return {1z};	}

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
		->	BitSize
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
		->	BitSize
		{	if	constexpr
				(	Bit::Field<t_nSize>
				::	IsFullWidthInteger
				)
			{	return
					t_nSize
				;
			}
			else
			{	return
				{	1z
				};
			}
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
		->	BitSize
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
			{	return
				ByteSize
				{	alignof(t_tEntity)
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
