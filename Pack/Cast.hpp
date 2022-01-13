#pragma once

#include <Pack/Apply.hpp>
#include <PackTemplate/Instance.hpp>
#include <Meta/Template.hpp>

namespace
	Pack
{
	/// converts the pack to the specified type pack
	template
		<	template
				<	typename
					...
				>
			typename
				t_t1TypePack
		>
	[[nodiscard]]
	constexpr
	PackTemplate::TypeInstanceOf
	<	t_t1TypePack
	>	auto
		Cast
		(	Instance auto
				i_vPack
		)
	{	return
			Apply
			(	i_vPack
			,	Meta::Template<t_t1TypePack>
				()
			)()
		;
	}
	
	/// converts the pack to the specified value pack
	template
		<	template
				<	auto
					...
				>
			typename
				t_t1ValuePack
		>
	[[nodiscard]]
	constexpr
	PackTemplate::ValueInstanceOf
	<	t_t1ValuePack
	>	auto
		Cast
		(	Instance auto
				i_vPack
		)
	{	return
			Apply
			(	i_vPack
			,	Meta::Template<t_t1ValuePack>
				()
			)()
		;
	}
	
	/// converts the pack to the specified seqeunce pack
	template
		<	template
				<	typename
						t_tNested
				,	t_tNested
					...
				>
			typename
				t_t1SequencePack
		>
	[[nodiscard]]
	constexpr
	PackTemplate::SequenceInstanceOf
	<	t_t1SequencePack
	>	auto
		Cast
		(	Instance auto
				i_vPack
		)
	{	return
			Apply
			(	i_vPack
			,	Meta::Template<t_t1SequencePack>
				()
			)()
		;
	}
}