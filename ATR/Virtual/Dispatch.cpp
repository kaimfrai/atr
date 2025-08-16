export module ATR.Virtual.Dispatch;

import ATR.Address;
import ATR.Erase;

import Meta.ID;
import Meta.IndexPack;
import Meta.String.Literal;
import Meta.Token.Type;
import Meta.Token.TypeID;
import Meta.Unlinkable;

import std;

using ::Meta::ID;
using ::Meta::IndexPack;
using ::Meta::String::Literal;
using ::Meta::Type;
using ::Meta::TypeID;

export namespace
	ATR::Virtual
{
	template
		<	typename
			...	t_tpImplementer
		>
	struct
		Dispatch
	{
		[[nodiscard]]
		auto static constexpr inline
		(	ElementSize
		)	()
			noexcept
		->	::std::size_t
		{	return
			::std::max
			({	sizeof(t_tpImplementer)
				...
			});
		}

		[[nodiscard]]
		auto static constexpr inline
		(	ImplementerCount
		)	()
			noexcept
		->	unsigned char
		{	return
				sizeof...(t_tpImplementer)
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	ImplementerIndex
		)	(	TypeID
					i_vType
			)
			noexcept
		->	unsigned char
		{
			auto const
			&	[	...
					vpIndex
				]
			=	IndexPack
				<	sizeof...(t_tpImplementer)
				>
			;
			unsigned char
				vResult
			{};
			if	(	(	...
					or	(	(	i_vType
							==	Type<t_tpImplementer>
							)
						and	(	static_cast<void>
								(	vResult
								=	vpIndex
								)
							,	true
							)
						)
					)
				)
			{	return
					vResult
				;
			}
			::Meta::Unlinkable
			();
		}

		template
			<	typename
					t_tResult
			,	Literal
					t_vFunctionName
			,	typename
				...	t_tpArgument
			>
		auto static constexpr inline
		(	Call
		)	(	CErasure
					i_rObject
			,	unsigned char
					i_vImplementerIndex
			,	t_tpArgument
				&&
				...	i_rpArgument
			)
			noexcept
		->	t_tResult
		{
			auto const
			&	[	...
					vpIndex
				]
			=	IndexPack
				<	sizeof...(t_tpImplementer)
				>
			;
			t_tResult
				vResult
			{};
			if	((	...
				or	(	(	i_vImplementerIndex
						==	static_cast<unsigned char>(vpIndex)
						)
					and	(	(void)
							(	vResult
							=	::ATR::FunctionType
								<	ID<t_vFunctionName>
								,	t_tpImplementer const&
								,	t_tpArgument
									...
								>{}
								(	i_rObject
								,	ForwardErased
									(	i_rpArgument
									)
									...
								)
							)
						,	true
						)
					)
				))
			{	return
					vResult
				;
			}
			::std::unreachable
			();
		}

		auto static constexpr inline
		(	Destroy
		)	(	RErasure
					i_rObject
			,	unsigned char
					i_vImplementerIndex
			)
			noexcept
		->	void
		{
			auto const
			&	[	...
					vpIndex
				]
			=	IndexPack
				<	sizeof...(t_tpImplementer)
				>
			;
			if	((	...
				or	(	(	i_vImplementerIndex
						==	static_cast<unsigned char>(vpIndex)
						)
					and	(	i_rObject
							.	As<t_tpImplementer...[vpIndex]>
								()
							.	compl
								t_tpImplementer...[vpIndex]
								()
						,	true
						)
					)
				))
			{	return
				;
			}
		}
	};
}
