export module ATR.Virtual.Dispatch;

import ATR.Address;
import ATR.Erase;

import Meta.ID;
import Meta.String.Literal;
import Meta.Token.Type;
import Meta.Token.TypeID;
import Meta.Unlinkable;

import std;

using ::Meta::ID;
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
		{	return
			[&]	<	::std::size_t
					...	t_vpIndex
				>(	::std::index_sequence
					<	t_vpIndex
						...
					>
				)
			{
				unsigned char
					vResult
				{};
				if	(	(	...
						or	(	(	i_vType
								==	Type<t_tpImplementer>
								)
							and	(	void
									(	vResult
									=	t_vpIndex
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
			}(	::std::make_index_sequence
				<	sizeof...(t_tpImplementer)
				>{}
			);
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
		{	return
			[&]	<	::std::size_t
					...	t_tpIndex
				>(	::std::index_sequence
					<	t_tpIndex
						...
					>
				)
			{	t_tResult
					vResult
				{};
				if	((	...
					or	(	(	i_vImplementerIndex
							==	static_cast<unsigned char>(t_tpIndex)
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
			}(	::std::make_index_sequence
				<	sizeof...(t_tpImplementer)
				>()
			);
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
		{	[&]	<	::std::size_t
					...	t_tpIndex
				>(	::std::index_sequence
					<	t_tpIndex
						...
					>
				)
			{	if	((	...
					or	(	(	i_vImplementerIndex
							==	static_cast<unsigned char>(t_tpIndex)
							)
						and	(	i_rObject
								.	As<t_tpImplementer...[t_tpIndex]>
									()
								.	compl
									t_tpImplementer...[t_tpIndex]
									()
							,	true
							)
						)
					))
				{	return
					;
				}
			}(	::std::make_index_sequence
				<	sizeof...(t_tpImplementer)
				>()
			);
		}
	};
}
