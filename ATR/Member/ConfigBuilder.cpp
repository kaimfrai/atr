export module ATR.Member.ConfigBuilder;

import ATR.Member.AlignBuffer;
import ATR.Member.ConfigData;
import ATR.Member.Constants;
import ATR.Member.LayoutList;

import Meta.Generic.Insert;
import Meta.Generic.LowerBound;
import Meta.ID;
import Meta.Memory.Constraint;
import Meta.Size;
import Meta.String.Chain;
import Meta.Token.TypeID;

import Std;

using ::Meta::Generic::LowerBoundIndex;
using ::Meta::Generic::StructureOfArrays::TryInsertByKey;
using ::Meta::Memory::ByteAlign;
using ::Meta::ProtoID;
using ::Meta::SSize;
using ::Meta::String::Chain;
using ::Meta::String::ImplicitChain;
using ::Meta::TypeID;

export namespace
	ATR::Member
{
	[[nodiscard]]
	auto constexpr inline
	(	Finalize
	)	(	auto
				i_rBuilder
		)
		noexcept
	->	ConfigData
	{
		auto
		&	rData
		=	i_rBuilder
			.	Data
		;
		for	(	auto
					vIndex
				=	0z
			;	(	vIndex
				<	rData
					.	NameCount
				)
			;	++	vIndex
			)
		{
			auto const
			&	rAliasTarget
			=	i_rBuilder
				.	Data
				.	AliasTargets
					[	vIndex
					]
			;
			if	(	rAliasTarget
					.	Value
						[	0
						]
				==	'\0'
				)
			{	continue
				;
			}

			auto const
				vAliasTargetIndex
			=	LowerBoundIndex
				(	rData
					.	Names
				,	rData
					.	NameCount
				,	rAliasTarget
				)
			;

			rData
			.	Types
				[	vIndex
				]
			=	rData
				.	Types
					[	vAliasTargetIndex
					]
			;

			rData
			.	TypeIndices
				[	vIndex
				]
			=	rData
				.	TypeIndices
					[	vAliasTargetIndex
					]
			;
		}

		return
			rData
		;
	}

	template
		<	ProtoID
				t_tTypeName
		,	typename
				t_tConfigBuilder
		>
	auto constexpr inline
		BuiltConfig_Of
	=	Finalize
		(	Configure
			(	t_tTypeName
				{}
			,	t_tConfigBuilder
				{}
			)
		)
	;

	struct
		ConfigBuilder
	{
		ConfigData
			Data
		{};

		[[nodiscard]]
		auto constexpr inline
		(	operator()
		)	(	ImplicitChain
					i_rMemberName
			,	ImplicitChain
					i_rTarget
			)
			noexcept
		->	ConfigBuilder&&
		{
			TryInsertByKey<Chain, TypeID, SSize, Chain>
			(	Data
				.	NameCount
			,	{	Data
					.	Names
				,	i_rMemberName
				}
			,	{	Data
					.	Types
				,	TypeID
					{}
				}
			,	{	Data
					.	TypeIndices
				,	-1z
				}
			,	{	Data
					.	AliasTargets
				,	i_rTarget
				}
			);

			return
			static_cast<ConfigBuilder&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator()
		)	(	ImplicitChain
					i_rMemberName
			,	TypeID
					i_vType
			)
			noexcept
		->	ConfigBuilder&&
		{
			auto const
				vInsertIndex
			=	TryInsertByKey<Chain, TypeID, SSize, Chain>
				(	Data
					.	NameCount
				,	{	Data
						.	Names
					,	i_rMemberName
					}
				,	{	Data
						.	Types
					,	i_vType
					}
				,	{	Data
						.	TypeIndices
					,	-1z
					}
				,	{	Data
						.	AliasTargets
					,	Chain
						{}
					}
				)
			;
			if	(	vInsertIndex
				>=	0z
				)
			{
				auto const
					vTypeIndex
				=	Data
					.	Layout
					.	AddType
						(	i_vType
						)
				;

				Data
				.	TypeIndices
					[	vInsertIndex
					]
				=	vTypeIndex
				;
			}
			else
			{
				std::unreachable();
			}

			return
			static_cast<ConfigBuilder&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator()
		)	(	char const
				*	i_aPrefix
			,	ProtoID auto
					i_vBaseID
			)
			noexcept
		->	ConfigBuilder&&
		{
			auto const
			&	rSplice
			=	BuiltConfig_Of
				<	decltype(i_vBaseID)
				,	ConfigBuilder
				>
			;

			if	(	Data
					.	NameCount
				==	0z
				)
			{
				Data
				=	rSplice
				;

				if	(	i_aPrefix
							[	0
							]
					!=	'\0'
					)
				{
					for	(	auto
								vIndex
							=	0z
						;	(	vIndex
							<	Data
								.	NameCount
							)
						;	++	vIndex
						)
					{
						auto
						&	rNewName
						=	Data
							.	Names
								[	vIndex
								]
						;
						auto const
						&	rOldName
						=	rSplice
							.	Names
								[	vIndex
								]
						;
						rNewName
						=	i_aPrefix
						+	rOldName
						;
					}
				}
			}
			else
			{
				AlignBuffer<IndexedType, NameBufferSize>
					vOverriddenMembers
				{};

				for	(	auto
							vNameIndex
						=	0z
					;	(	vNameIndex
						<	rSplice
							.	NameCount
						)
					;	++	vNameIndex
					)
				{
					auto const
						rPrefixedName
					=	i_aPrefix
					+	rSplice
						.	Names
							[	vNameIndex
							]
					;
					auto const
						vType
					=	rSplice
						.	Types
							[	vNameIndex
							]
					;

					auto const
						vTypeCount
					=	Data
						.	Layout
						.	Count
							(	vType
							)
					;

					auto const
						vTypeIndex
					=	vTypeCount
					+	rSplice
						.	TypeIndices
							[	vNameIndex
							]
					;
					auto const
					&	rAliasTarget
					=	rSplice
						.	AliasTargets
							[	vNameIndex
							]
					;
					auto const
						rPrefixedAliasTarget
					=	rAliasTarget
						.	empty
							()
					?	rAliasTarget
					:	(	i_aPrefix
						+	rAliasTarget
						)
					;

					auto const
						vInsertIndex
					=	TryInsertByKey<Chain, TypeID, SSize, Chain>
						(	Data
							.	NameCount
						,	{	Data
								.	Names
							,	rPrefixedName
							}
						,	{	Data
								.	Types
							,	vType
							}
						,	{	Data
								.	TypeIndices
							,	vTypeIndex
							}
						,	{	Data
								.	AliasTargets
							,	rPrefixedAliasTarget
							}
						)
					;

					//	Overriden true member
					if	(	(	vInsertIndex
							<	0z
							)
						and	rAliasTarget
							.	empty
								()
						)
					{	vOverriddenMembers
							[	vType
								.	GetAlign
									()
							]
						.	push_back
							(	{	vType
								,	vTypeIndex
								}
							)
						;
					}
				}

				// Reduce type indices greater overriden members' indices
				for	(	auto
							vNameIndex
						=	0z
					;	(	vNameIndex
						<	Data
							.	NameCount
						)
					;	++	vNameIndex
					)
				{
					auto const
						rAliasTarget
					=	Data
						.	AliasTargets
							[	vNameIndex
							]
					;

					if	(	not
							rAliasTarget
							.	empty
								()
						)
					{	continue
						;
					}

					auto const
						vType
					=	Data
						.	Types
							[	vNameIndex
							]
					;

					auto const
						vAlign
					=	vType
						.	GetAlign
							()
					;
					if	(	vAlign
						<	ByteAlign
						)
					{	continue
						;
					}

					auto
					&	rTypeIndex
					=	Data
						.	TypeIndices
							[	vNameIndex
							]
					;

					auto const
						vOldTypeIndex
					=	rTypeIndex
					;

					auto const
					&	rAlignedOverriddenMembers
					=	vOverriddenMembers
							[	vType
								.	GetAlign
									()
							]
					;

					for	(	auto const
							&	[	rOverridenType
								,	rOverridenTypeIndex
								]
						:	rAlignedOverriddenMembers
						)
					{
						if	(	vType
							!=	rOverridenType
							)
						{	continue
							;
						}

						if	(	vOldTypeIndex
							>	rOverridenTypeIndex
							)
						{
							rTypeIndex
							-=	1z
							;
						}
					}
				}

				Data
				.	Layout
				.	Splice
					(	rSplice
						.	Layout
					,	vOverriddenMembers
					)
				;
			}

			return
			static_cast<ConfigBuilder&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator()
		)	(	ProtoID auto
					i_vBaseID
			)
			noexcept
		->	ConfigBuilder&&
		{	return
			operator()
			(	Chain::Empty
			,	i_vBaseID
			);
		}
	};
}
