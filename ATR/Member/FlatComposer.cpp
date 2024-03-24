export module ATR.Member.FlatComposer;

import ATR.Member.Constant;
import ATR.Member.Constants;
import ATR.Member.FlatComposition;
import ATR.Member.LayoutList;
import ATR.Member.PrefixGuard;

import Meta.ID;
import Meta.Size;
import Meta.String.Hash;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::Meta::ProtoID;
using ::Meta::SSize;
using ::Meta::String::Hash;
using ::Meta::String::ImplicitHash;
using ::Meta::Type;
using ::Meta::TypeID;

export namespace
	ATR::Member
{
	struct
		FlatComposer
	{
		MemberNameList
			Members
		{};

		struct
			AliasTarget
		{
			short
				HashIndex
			{};
			Hash
				Target
			{};
			PartialName
				Suffix
			{};
			short
				UnionIndex
			{};
		};

		AliasTarget
			AliasTargets
			[	NameBufferSize
			]
		{};

		short
			AliasCount
		{};

		Hash
			Prefix
		{	""
		};

		short
			PrefixIndex
		=	-1
		;

		auto
		(*	DistrictIndexOf
		)	(	Hash
			)
			noexcept
		->	short
		;

		auto constexpr inline
		(	AddNewMember
		)	(	char const
				*	i_vMemberName
			,	auto
					i_fAdd
			)
			noexcept
		->	FlatComposer&&
		{
			auto const
				vPrefixedMemberName
			=	Prefix
			+	i_vMemberName
			;

			auto const
				vHashIndex
			=	Members
				.	HashIndexFor
					(	vPrefixedMemberName
					)
			;

			if	(	auto
						rHasMember
					=	Members
						.	HasMember
						[	vHashIndex
						][	Members
							.	UnionCount
						]
				;	not
					rHasMember
				)
			{
					rHasMember
				=	true
				;

					Members
					.	Names
					[	vHashIndex
					]
				=	vPrefixedMemberName
				;

				i_fAdd
				(	vHashIndex
				,	vPrefixedMemberName
				);
			}

			return
			static_cast<FlatComposer&&>
			(	*	this
			);
		}

		auto constexpr inline
		(	Alias
		)	(	char const
				*	i_vMemberName
			,	char const
				*	i_vTargetName
			)
			noexcept
		->	FlatComposer&&
		{	return
			AddNewMember
			(	i_vMemberName
			,	[&]	(	short
							i_vHashIndex
					,	Hash
					)
				{
						AliasTargets
						[	AliasCount
							++
						]
					=	AliasTarget
						{	i_vHashIndex
						,	(	Prefix
							+	i_vTargetName
							)
						,	PartialName
							{	i_vMemberName
							,	PrefixIndex
							}
						,	Members
							.	UnionCount
						}
					;
				}
			);
		}

		auto constexpr inline
		(	Member
		)	(	char const
				*	i_vMemberName
			,	TypeID
					i_vType
			)
			noexcept
		->	FlatComposer&&
		{	return
			AddNewMember
			(	i_vMemberName
			,	[&]	(	short
							i_vHashIndex
					,	Hash
							i_vPrefixedMemberName
					)
				{
					auto
					&	rMemberIndex
					=	Members
						.	MemberIndices
						[	i_vHashIndex
						]
					;

					if	(	rMemberIndex
						<	0
						)
					{	Members
						.	AddNewMember
							(	rMemberIndex
							,	i_vType
							,	i_vType
								.	IsAligned
									()
								?	DistrictIndexOf
									(	i_vPrefixedMemberName
									)
								:	-1
							,	PartialName
								{	i_vMemberName
								,	PrefixIndex
								}
							)
						;
					}
					else
					if	(	i_vType
						!=	Members
							.	Types
							[	rMemberIndex
							]
						)
					{	(void("Cannot register member with same name but different types!"), ::std::unreachable());
					}
				}
			);
		}

		template
			<	auto
					t_vValue
			>
		auto constexpr inline
		(	Static
		)	(	char const
				*	i_vMemberName
			,	ConstantValue<t_vValue>
					i_vValue
			)
			noexcept
		->	FlatComposer&&
		{	return
			AddNewMember
			(	i_vMemberName
			,	[&]	(	short
							i_vHashIndex
					,	Hash
					)
				{
					auto
					&	rMemberIndex
					=	Members
						.	MemberIndices
						[	i_vHashIndex
						]
					;

					TypeID const
						vType
					=	::Meta::Type
						<	ConstantType
							<	decltype
								(	t_vValue
								)
							>
						>
					;

					if	(	rMemberIndex
						<	0
						)
					{	Members
						.	AddNewMember
							(	rMemberIndex
							,	vType
							,	-1
							,	PartialName
								{	i_vMemberName
								,	PrefixIndex
								}
							)
						;
					}
					else
					if	(	vType
						!=	Members
							.	Types
							[	rMemberIndex
							]
						)
					{	(void("Cannot register member with same name but different types!"), ::std::unreachable());
					}

					Members
					.	Initializer
						[	rMemberIndex
						][	Members
							.	UnionCount
						]
					=	i_vValue
					;
				}
			);
		}

		auto constexpr inline
		(	Splice
		)	(	ProtoID auto
					i_vBaseID
			)
			noexcept
		->	FlatComposer&&
		{	return
				Recompose
				(	static_cast<FlatComposer&&>
					(	*this
					)
				,	i_vBaseID
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	ScopedPrefix
		)	(	char const
				*	i_vPrefix
			)
			noexcept
		->	PrefixGuard
		{
			auto const
				vNewPrefixIndex
			=	Members
				.	AddPrefix
					(	PartialName
						{	i_vPrefix
						,	PrefixIndex
						}
					)
			;

			return
				PrefixGuard
				{	Prefix
				,	i_vPrefix
				,	PrefixIndex
				,	vNewPrefixIndex
				}
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	CompleteType
		)	()
			noexcept
		->	FlatComposer&&
		{	++	Members
				.	UnionCount
			;
			return
			static_cast<FlatComposer&&>
			(	*	this
			);
		}
	};
}
