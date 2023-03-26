export module ATR.Member.DynamicTypes;

import ATR.Member.Config;

import Meta.ID.StringLiteral;
import Meta.Token.TypeID;

import Std;

using ::Meta::StringLiteral;
using ::Meta::TypeID;

export namespace
	ATR::Member
{
	template
		<	StringLiteral
				t_vTypeName
		>
	::std::array constexpr inline
		DynamicTypes_Of
	=	[]{
			auto constexpr
			&	rConfig
			=	Config_Of
				<	t_vTypeName
				>
			;

			auto constexpr
				vDynamicCount
			=	rConfig
				.	GetDynamicCount
					()
			;

			::std::array
			<	TypeID
			,	vDynamicCount
			>
				vTypes
			;

			auto const
				aTypesBegin
			=	rConfig
				.	LayoutList
				.	begin
					()
			;

			::std::copy_n
			(	aTypesBegin
			,	vDynamicCount
			,	vTypes
				.	begin
					()
			);

			return
				vTypes
			;
		}()
	;
}
