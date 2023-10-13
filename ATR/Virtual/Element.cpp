export module ATR.Virtual.Element;

import ATR.Instance;

import Meta.ID;

import Std;

using ::Meta::ProtoID;

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
		explicit(false) constexpr inline
		(	Element
		)	(	ProtoID auto
					i_vTypeName
			)
			noexcept
		requires
			(	sizeof(Instance<decltype(i_vTypeName)>) <= t_vMaxSize
			and	alignof(Instance<decltype(i_vTypeName)>) <= t_vMaxAlign
			)
		:	t_tpEntry
			{	i_vTypeName
			}
			...
		{
			new (	+
					m_vErasedElement
				)
			Instance<decltype(i_vTypeName)>
			{};
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
					)(	static_cast<decltype(i_rThis)>
						(	i_rThis
						)
						.	m_vErasedElement
					,	static_cast<t_tpArgument&&>
						(	i_rpArgument
						)
						...
					)
			;
		}
	};
}
