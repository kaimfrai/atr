export module ATR.Member.ConfigBuilder;

import ATR.Member.Alias;
import ATR.Member.AlignBuffer;
import ATR.Member.Constants;
import ATR.Member.CountedBuffer;
import ATR.Member.NamedType;

import Meta.ID;
import Meta.Memory.Alignment;
import Meta.String.Chain;
import Meta.Token.TypeID;

import Std;

using ::Meta::Memory::Alignment;
using ::Meta::ProtoID;
using ::Meta::String::Chain;
using ::Meta::TypeID;

namespace
	ATR::Member
{
	[[nodiscard]]
	auto constexpr
	(	MoveHigher
	)	(	NamedType const
			*	i_aBegin
		,	auto
				i_vCompare
		,	NamedType
			*	i_aInsert
		,	auto
				i_fGet
		)
		noexcept
	->	NamedType*
	{
		while(	i_aInsert
			!=	i_aBegin
			)
		{
			auto const
				aPrevious
			=	i_aInsert
			-	1z
			;

			if	(	i_fGet
					(	*
						aPrevious
					)
				<=	i_vCompare
				)
			{	return
					i_aInsert
				;
			}

			*	i_aInsert
			=	*	aPrevious
			;
			i_aInsert
			=	aPrevious
			;
		}

		return
			i_aInsert
		;
	}
}

export namespace
	ATR::Member
{
	template
		<	ProtoID
				t_tTypeName
		,	typename
				t_tConfigTransform
		>
	auto constexpr
		BuiltConfig_Of
	=	Configure
		(	t_tTypeName
			{}
		,	t_tConfigTransform
			{}
		)
	;

	struct
		ConfigBuilder
	{
		AlignBuffer<NamedType>
			NamedTypes
		{};

		CountedBuffer<Alias, NameBufferSize>
			AliasList
		{};

		[[nodiscard]]
		auto constexpr
		(	HasAlias
		)	(	Chain
					i_rMemberName
			)	const
			noexcept
		->	bool
		{
			auto const
				aAliasBegin
			=	AliasList
				.	begin
					()
			;

			auto const
				aAliasEnd
			=	AliasList
				.	end
					()
			;

			auto const
				aPosition
			=	::std::lower_bound
				(	aAliasBegin
				,	aAliasEnd
				,	i_rMemberName
				)
			;

			return
			(	(	aPosition
				!=	aAliasEnd
				)
			and	(	aPosition
					->	Name
				==	i_rMemberName
				)
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Chain
					i_rMemberName
			,	Chain
					i_rTarget
			)
			noexcept
		->	ConfigBuilder&&
		{
			auto const
				aAliasBegin
			=	AliasList
				.	begin
					()
			;
			auto
				aInsert
			=	AliasList
				.	end
					()
			;

			while(	aAliasBegin
				!=	aInsert
				)
			{
				auto const
					aPrevious
				=	(	aInsert
					-	1z
					)
				;

				if	(	aPrevious
						->	Name
					<	i_rMemberName
					)
				{	break;
				}

				*	aInsert
				=	*	aPrevious
				;
				aInsert
				=	aPrevious
				;
			}

			aInsert
			->	Name
			=	i_rMemberName
			;

			aInsert
			->	Target
			=	i_rTarget
			;

			++	AliasList
				.	Count
			;

			return
			static_cast<ConfigBuilder&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	char const
				*	i_aMemberName
			,	char const
				*	i_aTarget
			)
			noexcept
		->	ConfigBuilder&&
		{	return
			operator()
			(	Chain
				{	i_aMemberName
				}
			,	Chain
				{	i_aTarget
				}
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Chain
					i_rMemberName
			,	TypeID
					i_vType
			)
			noexcept
		->	ConfigBuilder&&
		{
			if	(	not
					HasAlias
					(	i_rMemberName
					)
				)
			{
				auto const
					vAlign
				=	i_vType
					.	GetAlign
						()
				;

				auto const
					aAlignmentEnd
				=	MoveHigher
					(	NamedTypes
						.	begin
							()
					,	vAlign
					,	NamedTypes
						.	end
							()
					,	[]	(	NamedType const
								&	i_rElement
							)
						{	return
								i_rElement
								.	Type
								.	GetAlign
									()
							;
						}
					)
				;

				auto
				&	rAlignmentCounter
				=	NamedTypes
					.	Counter
						(	vAlign
						)
				;

				auto const
					aInsertPosition
				=	MoveHigher
					(	(	aAlignmentEnd
						-	rAlignmentCounter
						)
					,	i_rMemberName
					,	aAlignmentEnd
					,	[]	(	NamedType const
								&	i_rElement
							)
						{	return
								i_rElement
								.	Name
							;
						}
					)
				;

				aInsertPosition
				->	Name
				=	i_rMemberName
				;

				aInsertPosition
				->	Type
				=	i_vType
				;

				++	rAlignmentCounter
				;

				++	NamedTypes
				.	TotalCounter
				;
			}

			return
			static_cast<ConfigBuilder&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	char const
				*	i_aMemberName
			,	TypeID
					i_vType
			)
			noexcept
		->	ConfigBuilder&&
		{	return
			operator()
			(	Chain
				{	i_aMemberName
				}
			,	i_vType
			);
		}

		[[nodiscard]]
		auto constexpr
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
			&	rMerge
			=	BuiltConfig_Of
				<	decltype(i_vBaseID)
				,	ConfigBuilder
				>
			;

			for	(	auto const
					&	[	rName
						,	rType
						]
				:	rMerge
					.	NamedTypes
				)
			{

				(void)
				operator()
				(	(	i_aPrefix
					+	rName
					)
				,	rType
				);
			}

			for	(	auto const
					&	[	rName
						,	rTarget
						]
				:	rMerge
					.	AliasList
				)
			{	(void)
				operator()
				(	(	i_aPrefix
					+	rName
					)
				,	(	i_aPrefix
					+	rTarget
					)
				);
			}

			return
			static_cast<ConfigBuilder&&>
			(	*this
			);
		}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	ProtoID auto
					i_vBaseID
			)
			noexcept
		->	ConfigBuilder&&
		{
			if	(	(	NamedTypes
						.	TotalCounter
					==	0z
					)
				and	(	AliasList
						.	Count
					==	0z
					)
				)
			{	return
				static_cast<ConfigBuilder&&>
				(	operator=
					(	BuiltConfig_Of
						<	decltype(i_vBaseID)
						,	ConfigBuilder
						>
					)
				);
			}

			return
			operator()
			(	Chain::Empty
			,	i_vBaseID
			);
		}
	};
}
