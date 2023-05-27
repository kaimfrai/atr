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
		explicit(false) constexpr
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
		auto constexpr
		(	operator()
		)	(	t_tFuncID
					i_vFuncName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)	const
			noexcept
		->	decltype(auto)
		{	return
			Dispatch
			(	i_vFuncName
			,	m_vErasedElement
			,	static_cast<t_tpArgument&&>
				(	i_rpArgument
				)
				...
			);
		}

		template
			<	ProtoID
					t_tFuncID
			,	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	t_tFuncID
					i_vFuncName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)
			noexcept
		->	decltype(auto)
		{	return
			Dispatch
			(	i_vFuncName
			,	m_vErasedElement
			,	static_cast<t_tpArgument&&>
				(	i_rpArgument
				)
				...
			);
		}
	};
}
