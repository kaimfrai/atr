export module ATR.District.Info;

import Meta.String.Hash;
import Meta.Token.Type;
import Meta.Token.TypeID;

using ::Meta::String::ImplicitHash;
using ::Meta::Type;
using ::Meta::TypeID;
using ::Meta::TypeToken;

export namespace
	ATR::District
{
	struct
		Info
	{
		ImplicitHash
			Name
		;
		ImplicitHash
			Host
		{};
	};

	template
		<	template
				<	typename
				,	typename
					...
				>
			typename
				t_t1Instance
		,	typename
				t_tTypeName
		,	typename
			...	t_tpDistrict
		>
	[[nodiscard]]
	auto constexpr inline
	(	DistrictIndexOf
	)	(	TypeToken<t_t1Instance<t_tTypeName, t_tpDistrict...>>
		,	TypeID
				i_vDistrict
		)
		noexcept
	->	short
	{
		TypeID static constexpr
			vDistrictList
			[]
		{	Type<t_tpDistrict>
			...
		};

		for	(	short
					vDistrictIndex
				=	0
			;
			;	++	vDistrictIndex
			)
		{	if	(	vDistrictList
					[	vDistrictIndex
					]
				==	i_vDistrict
				)
			{	return
					vDistrictIndex
				+	1
				;
			}
		}
	}
}
