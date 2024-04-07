export module ATR.District.ExcludingArray;

import ATR.District.Info;
import ATR.District.MoveArrayGuard;

import Meta.String.Hash;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::Meta::String::Hash;
using ::Meta::String::ImplicitHash;
using ::Meta::Type;
using ::Meta::TypeID;

export namespace
	ATR::District
{
	template
		<	Info
				t_vInfo
		,	ImplicitHash
			...	t_vpExcluded
		>
	struct
		ExcludingArray
	{
		static_assert
		(	::std::has_single_bit
			(	t_vInfo
				.	Multiplier
			)
		,	"Multiplier required to be a power of 2"
		);

		Hash static constexpr inline
			DistrictName
		=	t_vInfo
			.	Name
		;

		Hash static constexpr inline
			HostDistrictName
		=	t_vInfo
			.	Host
		;

		TypeID static constexpr inline
			NestedType
		=	Type
			<	DynamicArray
				<	void
				,	t_vInfo
					.	Multiplier
				>
			>
		;

		template
			<	typename
					t_tInstance
			>
		using
			Guard
		=	MoveArrayGuard
			<	t_vInfo
				.	Multiplier
			,	DistrictIndexOf
				(	Type<t_tInstance>
				,	Type<ExcludingArray>
				)
			,	t_tInstance
			>
		;

		[[nodiscard]]
		auto static constexpr inline
		(	Hosts
		)	(	Hash
					i_vName
			)
			noexcept
		->	bool
		{	return
			(	...
			and	(	t_vpExcluded
				!=	i_vName
				)
			);
		}
	};
}
