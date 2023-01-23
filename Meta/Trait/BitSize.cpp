export module Meta.Trait.BitSize;

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
		ProtoSized
	=	requires
		{
			sizeof(t_tProto);
		}
	;
}

export namespace
	Meta::Trait
{
	struct
		BitSize_Of
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
			<	ProtoSized
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
		{	return t_nSize;	}

		template
			<	ProtoSized
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
				(	auto constexpr
						nExtent
					=	::std::extent_v
						<	t_tEntity
						>
				;	nExtent
				!=	0uz
				)
			{	return
					operator()
					(	Type
						<	::std::remove_extent_t
							<	t_tEntity
							>
						>
					)
				*	nExtent
				;
			}
			else
			{	return
				ByteSize
				{	sizeof(t_tEntity)
				};
			}
		}
	};
}

export namespace
	Meta
{
	Trait::BitSize_Of const extern
		BitSize_Of
	;
}
