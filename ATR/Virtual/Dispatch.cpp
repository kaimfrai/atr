export module ATR.Virtual.Dispatch;

import Meta.ID;
import Meta.Memory.Size;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::Meta::ByteSize;
using ::Meta::ProtoID;
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
		->	ByteSize
		{	return
			{	::std::max
				({	sizeof(t_tpImplementer)
					...
				})
			};
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
			TypeID static constexpr
				vImplementer
				[]
			{	Type<t_tpImplementer>
				...
			};

			for	(	unsigned char
						vIndex
					=	0u
				;		vIndex
					<	ImplementerCount
						()
				;	++	vIndex
				)
			{
				if	(	vImplementer
						[	vIndex
						]
					==	i_vType
					)
				{	return
						vIndex
					;
				}
			}

			return
				ImplementerCount
				()
			;
			// TODO: unreachable here affects the assembly in unexpected ways
			//::std::unreachable
			//();
		}

		template
			<	typename
					t_tResult
			,	typename
				...	t_tpArgument
			>
		auto static constexpr inline
		(	Call
		)	(	ProtoID auto
					i_vFunctionName
			,	::std::byte const
				*	i_aObject
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
				if	(	(	...
						or	(	(	i_vImplementerIndex
								==	static_cast<unsigned char>(t_tpIndex)
								)
							?	(	(void)
									(	vResult
										=	(	*
												::std::launder
												(	::std::bit_cast<t_tpImplementer const*>
													(	i_aObject
													)
												)
											)(	i_vFunctionName
											,	::std::forward<t_tpArgument>
												(	i_rpArgument
												)
												...
											)
									)
								,	true
								)
							:	false
							)
						)
					)
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
		)	(	::std::byte
				*	i_aObject
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
						?	(	::std::launder
								(	::std::bit_cast<t_tpImplementer*>
									(	i_aObject
									)
								)
								->	compl
									t_tpImplementer
									()
							,	true
							)
						:	false
						)
					))
				{	return
					;
				}
				::std::unreachable
				();
			}(	::std::make_index_sequence
				<	sizeof...(t_tpImplementer)
				>()
			);
		}
	};
}
