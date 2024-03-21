export module ATR.Member.FlatComposition;

import ATR.Member.Constants;
import ATR.Member.CountedType;
import ATR.Member.Info;
import ATR.Member.AlignBuffer;

import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size;
import Meta.String.Hash;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::Meta::BitSize;
using ::Meta::String::Hash;
using ::Meta::Type;
using ::Meta::TypeID;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	struct
		PartialName
	{
		char const
		*	Name
		=	""
		;
		short
			PrefixIndex
		=	-1
		;

		[[nodiscard]]
		auto constexpr inline
		(	ToString
		)	(	PartialName const
				*	i_aPrefixes
			,	::std::size_t
					i_vSuffixLength
				=	0uz
			)	const
			noexcept
		->	::std::string
		{
			auto const
				vLength
			=	::std::string::traits_type::length
				(	Name
				)
			;
			if	(	PrefixIndex
				<	0
				)
			{
				::std::string
					vResult
				{};
				vResult
				.	reserve
					(	vLength
					+	i_vSuffixLength
					)
				;
				vResult
				.	append
					(	Name
					,	vLength
					)
				;
				return
					Name
				;
			}

			return
				i_aPrefixes
				[	PrefixIndex
				].	ToString
					(	i_aPrefixes
					,	vLength
					)
				.	append
					(	Name
					,	vLength
					)
			;
		}
	};

	struct
		MemberNameList
	{
		Hash
			Names
			[	NameBufferSize
			]
		;

		short
			MemberIndices
			[	NameBufferSize
			]
		;

		TypeID
			Types
			[	NameBufferSize
			]
		;

		short
			DistrictIndices
			[	NameBufferSize
			]
		;

		PartialName
			Suffixes
			[	NameBufferSize
			]
		;
		PartialName
			Prefixes
			[	PrefixBufferSize
			]
		{};

		short
			PrefixCount
		{};

		short
			MemberCount
		{};

		[[nodiscard]]
		auto constexpr inline
		(	HashIndexFor
		)	(	Hash
					i_vName
			)	const
			noexcept
		->	short
		{
			for	(	short
						vIndex
					=	static_cast<short>
						(	i_vName
						bitand
							0x3E // 64 entries and load factor of 2
						)
				;	// Termination by out of bounds
				;	++	vIndex
				)
			{	auto const
					vElement
				=	Names
						[	vIndex
						]
				;
				if	(	not
						vElement
					or	(	vElement
						==	i_vName
						)
					)
				{	return
						vIndex
					;
				}
			}
		}

		[[nodiscard]]
		auto constexpr inline
		(	AddTypeForHash
		)	(	short
					i_vHashIndex
			,	TypeID
					i_vType
			,	short
					i_vDistrictIndex
			,	PartialName
					i_vSuffix
			)
			noexcept
		->	short
		{
			auto const
				vMemberIndex
			=	MemberCount
				++
			;

			MemberIndices
			[	i_vHashIndex
			]=	vMemberIndex
			;
			Types
			[	vMemberIndex
			]=	i_vType
			;
			DistrictIndices
			[	vMemberIndex
			]=	i_vDistrictIndex
			;
			Suffixes
			[	vMemberIndex
			]=	i_vSuffix
			;

			return
				vMemberIndex
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	AddPrefix
		)	(	PartialName
					i_vPrefix
			)
			noexcept
		->	short
		{
			Prefixes
			[	PrefixCount
			]=	i_vPrefix
			;
			return
				PrefixCount
				++
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	ReflectName
		)	(	short
					i_vMemberIndex
			)	const
			noexcept
		->	::std::string
		{	return
				Suffixes
				[	i_vMemberIndex
				].	ToString
					(	+
						Prefixes
					)
			;
		}
	};

	template
		<	short
				t_vDistrictCount
			=	0
		>
	struct
		FlatComposition
	{
		short static constexpr inline
			LayoutCount
		=	t_vDistrictCount
		+	1
		;

		AlignBuffer
			Layout
			[	LayoutCount
			]
		{};

		MemberNameList
			Members
		{};

		BitSize
			Offsets
			[	NameBufferSize
			]
		{};

		[[nodiscard]]
		auto constexpr inline
		(	GetMemberType
		)	(	short
					i_vMemberIndex
			)	const
			noexcept
		->	TypeID
		{	return
				Members
				.	Types
					[	i_vMemberIndex
					]
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetMemberOffset
		)	(	short
					i_vMemberIndex
			)	const
			noexcept
		->	BitSize
		{	return
				Offsets
				[	i_vMemberIndex
				]
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetMemberDistrictIndex
		)	(	short
					i_vMemberIndex
			)	const
			noexcept
		->	short
		{	return
				Members
				.	DistrictIndices
					[	i_vMemberIndex
					]
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetMemberInfo
		)	(	short
					i_vMemberIndex
			)	const
			noexcept
		->	Info
		{	return
			{	GetMemberType
				(	i_vMemberIndex
				)
			,	GetMemberOffset
				(	i_vMemberIndex
				)
			,	GetMemberDistrictIndex
				(	i_vMemberIndex
				)
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	DistrictToMemberIndex
		)	(	short
					i_vDistrictIndex
			)	const
			noexcept
		->	short
		{
			[[assume(i_vDistrictIndex > 0)]];
			return
				i_vDistrictIndex
			-	1
			+	Members
				.	MemberCount
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetDistrictOffset
		)	(	short
					i_vDistrictIndex
			)	const
			noexcept
		->	BitSize
		{	return
				GetMemberOffset
				(	DistrictToMemberIndex
					(	i_vDistrictIndex
					)
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetDistrictDistrictIndex
		)	(	short
					i_vDistrictIndex
			)	const
			noexcept
		->	short
		{	return
				GetMemberDistrictIndex
				(	DistrictToMemberIndex
					(	i_vDistrictIndex
					)
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	FindMemberInfo
		)	(	Hash
					i_vMemberName
			)	const
			noexcept
		->	Info
		{
			auto const
				vHashIndex
			=	Members
				.	HashIndexFor
					(	i_vMemberName
					)
			;

			if	(	not
					Members
					.	Names
						[	vHashIndex
						]
				)
			{	return
				Info
				{	Type<void>
				,	-1_bit
				,	-1
				};
			}

			return
				GetMemberInfo
				(	Members
					.	MemberIndices
						[	vHashIndex
						]
				)
			;
		}
	};
}
