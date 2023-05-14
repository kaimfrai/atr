export module Meta.Functional.FoldDirection;

export namespace
	Meta::Functional
{
	enum class
		EFoldDirection
	{	Left
	,	Right
	};

	auto constexpr
		LeftFold
	=	EFoldDirection::Left
	;

	auto constexpr
		RightFold
	=	EFoldDirection::Right
	;
}
