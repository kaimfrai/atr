export module ATR.Member.FlatComposition;

import ATR.Member.AlignBuffer;
import ATR.Member.Constants;
import ATR.Member.Info;

import Meta.Auto.Bit.Field;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size;
import Meta.String.Hash;
import Meta.Token.Type;
import Meta.Token.TypeID;

import std;

using ::Meta::Auto::Var;
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
				]
			.	ToString
				(	i_aPrefixes
				,	vLength
				)
			.	append
				(	Name
				,	vLength
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	PartialName
					i_vLeft
			,	PartialName
					i_vRight
			)
			noexcept
		->	bool
		{	if	(	i_vLeft
					.	PrefixIndex
				!=	i_vRight
					.	PrefixIndex
				)
			{	return
					false
				;
			}

			return
				::std::string_view
				{	i_vLeft
					.	Name
				}
			==	::std::string_view
				{	i_vRight
					.	Name
				}
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
		{};

		short
			MemberIndices
			[	NameBufferSize
			]
		{};

		short
			HashIndices
			[	NameBufferSize
			]
		{};

		TypeID
			Types
			[	NameBufferSize
			]
		{};

		short
			DistrictIndices
			[	NameBufferSize
			]
		{};

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

		Var<bool[UnionBufferSize]>
			HasMember
			[	NameBufferSize
			]
		{};

		void const
		*	Initializer
			[	NameBufferSize
			][	UnionBufferSize
			]
		{};

		short
			PrefixCount
		{};

		short
			MemberCount
		{};

		short
			UnionCount
		{};

		explicit(false) constexpr inline
		(	MemberNameList
		)	()
			noexcept
		{	::std::fill_n
			(	MemberIndices
			,	NameBufferSize
			,	-1
			);
		}

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

		auto constexpr inline
		(	AddNewMember
		)	(	short
				&	i_rMemberIndex
			,	short
					i_vHashIndex
			,	TypeID
					i_vType
			,	short
					i_vDistrictIndex
			,	PartialName
					i_vSuffix
			)
			noexcept
		->	void
		{
			auto const
				vMemberIndex
			=	MemberCount
				++
			;

			(	i_rMemberIndex
			=	vMemberIndex
			);
			(	HashIndices
				[	vMemberIndex
				]
			=	i_vHashIndex
			);
			(	Types
				[	vMemberIndex
				]
			=	i_vType
			);
			(	DistrictIndices
				[	vMemberIndex
				]
			=	i_vDistrictIndex
			);
			(	Suffixes
				[	vMemberIndex
				]
			=	i_vSuffix
			);
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
			for	(	short
						vPrefixIndex
					=	0
				;	(	vPrefixIndex
					<	PrefixCount
					)
				;	++	vPrefixIndex
				)
			{
				if	(	Prefixes
						[	vPrefixIndex
						]
					==	i_vPrefix
					)
				{	return
						vPrefixIndex
					;
				}
			}

				Prefixes
				[	PrefixCount
				]
			=	i_vPrefix
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
			][	UnionBufferSize
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
			,	short
					i_vUnionIndex
				=	0
			)	const
			noexcept
		->	BitSize
		{	return
				Offsets
				[	i_vMemberIndex
				][	i_vUnionIndex
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
		(	GetMemberInitializer
		)	(	short
					i_vMemberIndex
			,	short
					i_vUnionIndex
				=	0
			)	const
			noexcept
		->	void const*
		{	return
				Members
				.	Initializer
				[	i_vMemberIndex
				][	i_vUnionIndex
				]
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetMemberInfo
		)	(	short
					i_vMemberIndex
			,	short
					i_vUnionIndex
				=	0
			)	const
			noexcept
		->	Info
		{	return
			{	GetMemberType
				(	i_vMemberIndex
				)
			,	GetMemberOffset
				(	i_vMemberIndex
				,	i_vUnionIndex
				)
			,	GetMemberDistrictIndex
				(	i_vMemberIndex
				)
			,	GetMemberInitializer
				(	i_vMemberIndex
				,	i_vUnionIndex
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
				NameBufferSize
			-	i_vDistrictIndex
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetDistrictType
		)	(	short
					i_vDistrictIndex
			)	const
			noexcept
		->	TypeID
		{	return
			GetMemberType
			(	DistrictToMemberIndex
				(	i_vDistrictIndex
				)
			);
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
			);
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
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	FindMemberInfo
		)	(	Hash
					i_vMemberName
			,	short
					i_vUnionIndex
				=	0
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
					.	HasMember
						[	vHashIndex
						][	i_vUnionIndex
						]
				)
			{	return
				Info
				{	Type<void>
				,	-1_bit
				,	-1
				,	nullptr
				};
			}

			return
			GetMemberInfo
			(	Members
				.	MemberIndices
					[	vHashIndex
					]
			,	i_vUnionIndex
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	DistrictMask
		)	(	short
					i_vDistrictIndex
			)	const
			noexcept
		->	Var<bool[UnionBufferSize]>
		{
			Var<bool[UnionBufferSize]>
				vMask
			{};

			for	(	short
						vMemberIndex
					=	0
				;		vMemberIndex
					<	Members
						.	MemberCount
				;	++	vMemberIndex
				)
			{
				if	(	Members
						.	DistrictIndices
							[	vMemberIndex
							]
					!=	i_vDistrictIndex
					)
				{	continue
					;
				}

				auto const
					vHashIndex
				=	Members
					.	HashIndices
						[	vMemberIndex
						]
				;

				(	vMask
				|=	Members
					.	HasMember
						[	vHashIndex
						]
				);

				if	(	Count
						(	vMask
						)
					==	Members
						.	UnionCount
					)
				{	return
						vMask
					;
				}
			}

			return
				vMask
			;
		}
	};
}
