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
import Meta.String.Hash;
import Meta.Token.TypeID;

import Std;

using ::Meta::Generic::LowerBoundIndex;
using ::Meta::Generic::StructureOfArrays::TryInsertByKey;
using ::Meta::Memory::ByteAlign;
using ::Meta::ProtoID;
using ::Meta::SSize;
using ::Meta::String::Hash;
using ::Meta::String::ImplicitHash;
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
			if	(	not
					rAliasTarget
				)
			{	continue
				;
			}

			auto const
				vAliasTargetIndex
			=	HashFindIndex
				(	rData
					.	Names
				,	rData
					.	BucketSize
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

		Hash
			Prefix
		{	""
		};

		[[nodiscard]]
		auto constexpr inline
		(	Alias
		)	(	ImplicitHash
					i_vMemberName
			,	ImplicitHash
					i_vTargetName
			)
			noexcept
		->	ConfigBuilder&&
		{
			auto const
				vPrefixedMemberName
			=	Prefix
			+	i_vMemberName
			;

			auto const
				vIndex
			=	HashFindIndex
				(	Data
					.	Names
				,	Data
					.	BucketSize
				,	vPrefixedMemberName
				)
			;
			if	(	not
					Data
					.	Names
						[	vIndex
						]
				)
			{
				Data
				.	Names
					[	vIndex
					]
				=	vPrefixedMemberName
				;
				Data
				.	AliasTargets
					[	vIndex
					]
				=	Prefix
				+	i_vTargetName
				;
			}

			return
			static_cast<ConfigBuilder&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	Member
		)	(	ImplicitHash
					i_vMemberName
			,	TypeID
					i_vType
			)
			noexcept
		->	ConfigBuilder&&
		{
			auto const
				vPrefixedMemberName
			=	Prefix
			+	i_vMemberName
			;

			auto const
				vInsertIndex
			=	HashFindIndex
				(	Data
					.	Names
				,	Data
					.	BucketSize
				,	vPrefixedMemberName
				)
			;
			if	(	not
					Data
					.	Names
						[	vInsertIndex
						]
				)
			{
				Data
				.	Names
					[	vInsertIndex
					]
				=	vPrefixedMemberName
				;

				Data
				.	Types
					[	vInsertIndex
					]
				=	i_vType
				;

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

			return
			static_cast<ConfigBuilder&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	PrefixSplice
		)	(	ImplicitHash
					i_vPrefix
			,	ProtoID auto
					i_vBaseID
			)
			noexcept
		->	ConfigBuilder&&
		{
			auto const
				vOldPrefix
			=	Prefix
			;
			Prefix
			=	vOldPrefix
			+	//	Nested prefixes are appended
				i_vPrefix
			;

			(void)
			Splice
			(	i_vBaseID
			);

			Prefix
			=	vOldPrefix
			;

			return
			static_cast<ConfigBuilder&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	Splice
		)	(	ProtoID auto
					i_vBaseID
			)
			noexcept
		->	ConfigBuilder&&
		{	return
			Configure
			(	i_vBaseID
			,	static_cast<ConfigBuilder&&>
				(	*this
				)
			);
		}
	};
}
