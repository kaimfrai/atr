export module Meta.Token.Query;

import Meta.Token.Specifier;
import Meta.Token.Type;

import Meta.Bit.Field;
import Meta.Memory.Size;
import Meta.Size;

import Std;

namespace
	Meta::Query
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
	Meta::Query
{
	struct
		ArrayElement_Of final
	{
		auto constexpr
		(	operator()
		)	(	TypeID
			)	const
		->	TypeToken<void>
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity[]>
			)	const
		->	TypeToken
			<	t_tEntity
			>
		{	return {};	}

		template
			<	typename
					t_tEntity
			,	USize
					t_nExtent
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity[t_nExtent]>
			)	const
		->	TypeToken
			<	t_tEntity
			>
		{	return {};	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mut<t_tEntity>>
			)	const
		->	decltype(auto)
		{	return
			operator()
			(	Type<t_tEntity>
			);
		}
	};

	struct
		ArrayExtent_Of final
	{
		auto constexpr
		(	operator()
		)	(	TypeID
			)	const
		->	USize
		{	return 0uz;	}

		template
			<	typename
					t_tEntity
			,	USize
					t_nExtent
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity[t_nExtent]>
			)	const
		->	USize
		{	return t_nExtent;	}

		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<Specifier::Mut<t_tEntity>>
			)	const
		->	decltype(auto)
		{	return
			operator()
			(	Type<t_tEntity>
			);
		}
	};

	struct
		BitAlign_Of final
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

	struct
		BitSize_Of final
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
	Query::ArrayElement_Of const extern
		ArrayElement_Of
	;

	Query::ArrayExtent_Of const extern
		ArrayExtent_Of
	;

	Query::BitAlign_Of const extern
		BitAlign_Of
	;

	Query::BitSize_Of const extern
		BitSize_Of
	;
}
