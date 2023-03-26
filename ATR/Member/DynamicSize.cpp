export module ATR.Member.DynamicSize;

import ATR.Member.DynamicTypes;

import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.ID.StringLiteral;
import Meta.Token.TypeID;

import Std;

using namespace ::Meta::Literals;

using ::Meta::TypeID;
using ::Meta::BitSize;
using ::Meta::StringLiteral;

export namespace
	ATR::Member
{
	template
		<	StringLiteral
				t_vTypeName
		>
	BitSize constexpr inline
		DynamicSize_Of
	=	::std::accumulate
		(	begin
			(	DynamicTypes_Of
				<	t_vTypeName
				>
			)
		,	end
			(	DynamicTypes_Of
				<	t_vTypeName
				>
			)
		,	0_bit
		,	[]	(	BitSize
						i_vSize
				,	TypeID
						i_vType
				)	static
			{	return
					i_vSize
				+	i_vType
					.	GetSize
						()
				;
			}
		)
	;
}
