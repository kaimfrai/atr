export module ATR.Virtual.Element;

import ATR.Erase;
import ATR.Instance;

import Meta.ID;
import Meta.String.Literal;

import std;

using ::Meta::ID;
using ::Meta::ProtoID;
using ::Meta::String::Literal;

export namespace
	ATR::Virtual
{
	template
		<	::std::size_t
				t_vMaxSize
		,	::std::size_t
				t_vMaxAlign
		,	typename
			...	t_tpEntry
		>
	class
		Element
	:	t_tpEntry
		...
	{
		using
			t_tpEntry
		::	Dispatch
			...
		;

		alignas(t_vMaxAlign)
		::std::byte
			m_vErasedElement
			[	t_vMaxSize
			]
		;

	public:
		template
			<	typename
				...	t_tpArgument
			>
		explicit(false) constexpr inline
		(	Element
		)	(	ProtoID auto
					i_vTypeName
			,	t_tpArgument
				...	i_vpInitializer
			)
			noexcept
			(	sizeof...(i_vpInitializer)
			==	0uz
			)
		requires
			(	(	sizeof(Instance<decltype(i_vTypeName)>)
				<=	t_vMaxSize
				)
			and	(	alignof(Instance<decltype(i_vTypeName)>)
				<=	t_vMaxAlign
				)
			)
		:	t_tpEntry
			{	i_vTypeName
			}
			...
		{
			new	(	+
					m_vErasedElement
				)
			Instance<decltype(i_vTypeName)>
			{	i_vpInitializer
				...
			};
		}

		template
			<	Literal
					t_vLiteral
			>
		[[nodiscard]]
		auto constexpr inline
		(	As
		)	(	this auto
				&&	i_rThis
			)
			noexcept
		->	decltype(auto)
		{	return
				AsErasure
				(	static_cast<decltype(i_rThis)>
					(	i_rThis
					).	m_vErasedElement
				)
			.	template As<Instance<ID<t_vLiteral>>>
				()
			;
		}

		template
			<	ProtoID
					t_tFuncID
			,	typename
				...	t_tpArgument
			>
		auto constexpr inline
		(	operator()
		)	(	this auto
				&&	i_rThis
			,	t_tFuncID
					i_vFuncName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)
			noexcept
		->	decltype(auto)
		{	return
				static_cast<decltype(i_rThis)>
				(	i_rThis
				)
				.	Dispatch
					(	i_vFuncName
					)(	AsErasure
						(	static_cast<decltype(i_rThis)>
							(	i_rThis
							).	m_vErasedElement
						)
					,	static_cast<t_tpArgument&&>
						(	i_rpArgument
						)
						...
					)
			;
		}
	};
}
