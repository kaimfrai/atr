export module Layout.Dublicate;

export import Layout.DataMember;

export import ID.Modify;
export import ID.Decimal;
export import ID.Data;
#include <Pack/Fold.hpp>
#include <Pack/MakeSequence.hpp>
#include <Pack/Cast.hpp>
#include <Pack/Type.hpp>

export namespace
	Layout
{
	template
		<	DataMemberInstance
			...	t_tpDataMember
		>
	struct
		Dublicator
	{
		template
			<	ID::DataInstance
					t_tName
			,	Std::Object
					t_tValue
			,	DataMemberInitializerFor
				<	t_tValue
				>	t_tDefaultInitializer
			,	BitAlignmentType
					t_tBitAlignmentInfo
			,	char
				...	t_npDigit
			>
		static
		constexpr
		auto
			AppendedName
			(	Meta::TypeInfo
				<	DataMember
					<	t_tName
					,	t_tValue
					,	t_tDefaultInitializer
					,	t_tBitAlignmentInfo
					>
				>
			,	ID::Decimal
				<	t_npDigit
					...
				>
			)
		{	return
				DataMemberInfo
				<	decltype(
						t_tName
						{}
					+	ID::Extend
						<	char
						,	'['
						,	t_npDigit
							...
						,	']'
						>{}
					)
				,	t_tValue
				,	t_tDefaultInitializer
				,	t_tBitAlignmentInfo
				>{}
			;
		}

		[[nodiscard]]
		constexpr
		auto
			operator()
			(	Pack::TypeInstance auto
					i_vNewPack
			,	Meta::ValueInstance auto
					i_vIndex
			)	const
		{	return
				Pack::Concat
				(	i_vNewPack
				,	AppendedName
					(	Meta::T
						<	t_tpDataMember
						>
					,	i_vIndex
						.	Value
					)
					...
				)
			;
		}
	};

	/// multiplies the configuration and appends an [index] to each name
	template
		<	char
			...	t_npDigit
		>
	constexpr
	Config auto
		operator*
		(	Config auto
				i_vBase
		,	ID::Decimal
			<	t_npDigit
				...
			>	i_vMultiplier
		)
	{	return
			Pack::FoldLeft
			(	ID::MakeDecimalSequence
				(	i_vMultiplier
				)
			,	Pack::Cast
				<	Dublicator
				>(	i_vBase
				)
			,	DataMemberPack
				<>{}
			)
		;
	}
}
