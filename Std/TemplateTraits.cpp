export module Std.TemplateTraits;

/* matches types against certain template patterns
 * patterns are:
 * - TypePack: a template of multiple types
 * - TypePackTemplate: a template of a template of types
 * - ValuePack: a template of multiple values
 * - ValuePackTemplate: a template of a template of values
 * - SequencePack: a template of a type followed by a pack of values of that type
 * - SequencePackTemplate: a template of a SequencePack
 *
 * types can be checked whether they meet a certain pattern and if so, whether they match a specific template
 */

export import Std.Size;

export import Std;

export namespace
	Std
{
	template
		<	template
				<	typename
					...
				>
			typename
		,	template
				<	typename
					...
				>
			typename
		>
	struct
		IsSameTypePackTemplate
	:	std::false_type
	{};

	template
		<	template
				<	typename
					...
				>
			typename
				t_t1Match
		>
	struct
		IsSameTypePackTemplate
		<	t_t1Match
		,	t_t1Match
		>
	:	std::true_type
	{};

	template
		<	template
				<	template
						<	typename
							...
						>
					typename
				>
			typename
		,	template
				<	template
						<	typename
							...
						>
					typename
				>
			typename
		>
	struct
		IsSameTypePackTemplateTemplate
	:	std::false_type
	{};

	template
		<	template
				<	template
						<	typename
							...
						>
					typename
				>
			typename
				t_t2Match
		>
	struct
		IsSameTypePackTemplateTemplate
		<	t_t2Match
		,	t_t2Match
		>
	:	std::true_type
	{};

	template
		<	template
				<	auto
					...
				>
			typename
		,	template
				<	auto
					...
				>
			typename
		>
	struct
		IsSameValuePackTemplate
	:	std::false_type
	{};

	template
		<	template
				<	auto
					...
				>
			typename
				t_t1Match
		>
	struct
		IsSameValuePackTemplate
		<	t_t1Match
		,	t_t1Match
		>
	:	std::true_type
	{};

	template
		<	template
				<	template
						<	auto
							...
						>
					typename
				>
			typename
		,	template
				<	template
						<	auto
							...
						>
					typename
				>
			typename
		>
	struct
		IsSameValuePackTemplateTemplate
	:	std::false_type
	{};

	template
		<	template
				<	template
						<	auto
							...
						>
					typename
				>
			typename
				t_t2Match
		>
	struct
		IsSameValuePackTemplateTemplate
		<	t_t2Match
		,	t_t2Match
		>
	:	std::true_type
	{};

	template
		<	template
				<	typename
						t_tElement
				,	t_tElement
					...
				>
			typename
		,	template
				<	typename
						t_tElement
				,	t_tElement
					...
				>
			typename
		>
	struct
		IsSameSequencePackTemplate
	:	std::false_type
	{};

	template
		<	template
				<	typename
						t_tElement
				,	t_tElement
					...
				>
			typename
				t_t1Match
		>
	struct
		IsSameSequencePackTemplate
		<	t_t1Match
		,	t_t1Match
		>
	:	std::true_type
	{};

	template
		<	template
				<	template
						<	typename
								t_tElement
						,	t_tElement
							...
						>
					typename
				>
			typename
		,	template
				<	template
						<	typename
								t_tElement
						,	t_tElement
							...
						>
					typename
				>
			typename
		>
	struct
		IsSameSequencePackTemplateTemplate
	:	std::false_type
	{};

	template
		<	template
				<	template
						<	typename
								t_tElement
						,	t_tElement
							...
						>
					typename
				>
			typename
				t_t2Match
		>
	struct
		IsSameSequencePackTemplateTemplate
		<	t_t2Match
		,	t_t2Match
		>
	:	std::true_type
	{};

	template
		<	typename
				t_tInstance
		,	typename
				t_tRawInstance
			=	::std::remove_cv_t
				<	t_tInstance
				>
		>
	struct
		IsTypePackInstance
	:	std::false_type
	,	SizeValueType
		<>
	{};

	template
		<	typename
				t_tInstance
		,	template
				<	typename
					...
				>
			typename
				t_t1TypePack
		,	typename
			...	t_tpElement
		>
	struct
		IsTypePackInstance
		<	t_tInstance
		,	t_t1TypePack
			<	t_tpElement
				...
			>
		>
	:	std::true_type
	,	SizeValueType
		<	sizeof...(
				t_tpElement
			)
		>
	{
		template
			<	template
					<	typename
						...
					>
				typename
					t_t1Match
			>
		struct
			Of
		:	IsSameTypePackTemplate
			<	t_t1TypePack
			,	t_t1Match
			>
		{};
	};

	template
		<	typename
				t_tInstance
		,	typename
				t_tRawInstance
			=	std::remove_cv_t
				<	t_tInstance
				>
		>
	struct
		IsTypePackTemplateInstance
	:	std::false_type
	{};

	template
		<	typename
				t_tInstance
		,	template
				<	template
						<	typename
							...
						>
					typename
				>
			typename
				t_t2TypePack
		,	template
				<	typename
					...
				>
			typename
				t_t1TypePack
		>
	struct
		IsTypePackTemplateInstance
		<	t_tInstance
		,	t_t2TypePack
			<	t_t1TypePack
			>
		>
	:	std::true_type
	{
		template
			<	template
					<	template
							<	typename
								...
							>
						typename
					>
				typename
					t_t2Match
			>
		struct
			Of
		:	IsSameTypePackTemplateTemplate
			<	t_t2TypePack
			,	t_t2Match
			>
		{};
	};

	template
		<	typename
				t_tInstance
		,	typename
				t_tRawInstance
			=	std::remove_cv_t
				<	t_tInstance
				>
		>
	struct
		IsValuePackInstance
	:	std::false_type
	,	SizeValueType
		<>
	{};

	template
		<	typename
				t_tInstance
		,	template
				<	auto
					...
				>
			typename
				t_t1ValuePack
		,	auto
			...	t_vpElement
		>
	struct
		IsValuePackInstance
		<	t_tInstance
		,	t_t1ValuePack
			<	t_vpElement
				...
			>
		>
	:	std::true_type
	,	SizeValueType
		<	sizeof...(
				t_vpElement
			)
		>
	{
		template
			<	template
					<	auto
						...
					>
				typename
					t_t1Match
			>
		struct
			Of
		:	IsSameValuePackTemplate
			<	t_t1ValuePack
			,	t_t1Match
			>
		{};
	};

	template
		<	typename
				t_tInstance
		,	typename
				t_tRawInstance
			=	std::remove_cv_t
				<	t_tInstance
				>
		>
	struct
		IsValuePackTemplateInstance
	:	std::false_type
	{};

	template
		<	typename
				t_tInstance
		,	template
				<	template
						<	auto
							...
						>
					typename
				>
			typename
				t_t2ValuePack
		,	template
				<	auto
					...
				>
			typename
				t_t1ValuePack
		>
	struct
		IsValuePackTemplateInstance
		<	t_tInstance
		,	t_t2ValuePack
			<	t_t1ValuePack
			>
		>
	:	std::true_type
	{
		template
			<	template
					<	template
							<	auto
								...
							>
						typename
					>
				typename
					t_t2Match
			>
		struct
			Of
		:	IsSameValuePackTemplateTemplate
				<	t_t2ValuePack
				,	t_t2Match
				>
		{};
	};

	template
		<	typename
				t_tInstance
		,	typename
				t_tRawInstance
			=	std::remove_cv_t
				<	t_tInstance
				>
		>
	struct
		IsSequencePackInstance
	:	std::false_type
	,	SizeValueType
		<>
	{};

	template
		<	typename
				t_tInstance
		,	template
				<	typename
						t_tSequenceElement
				,	t_tSequenceElement
					...
				>
			typename
				t_t1SequencePack
		,	typename
				t_tElement
		,	t_tElement
			...	t_vpElement
		>
	struct
		IsSequencePackInstance
		<	t_tInstance
		,	t_t1SequencePack
			<	t_tElement
			,	t_vpElement
				...
			>
		>
	:	std::true_type
	,	SizeValueType
		<	sizeof...(
				t_vpElement
			)
		>
	{
		template
			<	template
					<	typename
							t_tMatchElement
					,	t_tMatchElement
						...
					>
				typename
					t_t1Match
			>
		struct
			Of
		:	IsSameSequencePackTemplate
				<	t_t1SequencePack
				,	t_t1Match
				>
		{};
	};

	template
		<	typename
				t_tInstance
		,	typename
				t_tRawInstance
			=	::std::remove_cv_t
				<	t_tInstance
				>
		>
	struct
		IsSequencePackTemplateInstance
		:	std::false_type
		{}
	;

	template
		<	typename
				t_tInstance
		,	template
				<	template
						<	typename
								t_tSequenceElement
						,	t_tSequenceElement
							...
						>
					typename
				>
			typename
				t_t2SequencePack
		,	template
				<	typename
						t_tSequenceElement
				,	t_tSequenceElement
					...
				>
			typename
				t_t1SequencePack
		>
	struct
		IsSequencePackTemplateInstance
		<	t_tInstance
		,	t_t2SequencePack
			<	t_t1SequencePack
			>
		>
	:	std::true_type
	{
		template
			<	template
					<	template
							<	typename
									t_tSequenceElement
							,	t_tSequenceElement
								...
							>
						typename
					>
				typename
					t_t2Match
			>
		struct
			Of
		:	IsSameSequencePackTemplateTemplate
			<	t_t2SequencePack
			,	t_t2Match
			>
		{};
	};

	template
		<	typename
				t_tInstance
		>
	constexpr
	USizeType
		TemplatePackSize
	=	/// the value will be 0 if no pattern matched
		std::max
		(	{	IsTypePackInstance
				<	t_tInstance
				>::	Size
			,	IsValuePackInstance
				<	t_tInstance
				>::	Size
			,	IsSequencePackInstance
				<	t_tInstance
				>::	Size
			}
		)
	;
}
