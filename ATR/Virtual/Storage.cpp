export module ATR.Virtual.Storage;

import ATR.Virtual.Element;

import Meta.Size;

import Std;

using ::Meta::USize;

export namespace
	ATR::Virtual
{
	template
		<	USize
				t_nMaxSize
		,	USize
				t_nMaxAlign
		,	typename
			...	t_tpVirtualItem
		>
	using
		Storage
	=	Element
		<	::std::aligned_storage_t
			<	t_nMaxSize
			,	t_nMaxAlign
			>
		,	t_tpVirtualItem
			...
		>
	;
}
