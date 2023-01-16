export module Meta.Functional.Key;

export namespace
	Meta::Functional
{
	struct
		Key final
	{
		auto operator+	(Key) -> Key;
		auto operator-	(Key) -> Key;
		auto operator*	(Key) -> Key;
		auto operator/	(Key) -> Key;
		auto operator%	(Key) -> Key;
		auto operator^	(Key) -> Key;
		auto operator&	(Key) -> Key;
		auto operator|	(Key) -> Key;
		auto operator=	(Key) -> Key;
		auto operator<	(Key) -> Key;
		auto operator>	(Key) -> Key;
		auto operator<<	(Key) -> Key;
		auto operator>>	(Key) -> Key;
		auto operator+=	(Key) -> Key;
		auto operator-=	(Key) -> Key;
		auto operator*=	(Key) -> Key;
		auto operator/=	(Key) -> Key;
		auto operator%= (Key) -> Key;
		auto operator^=	(Key) -> Key;
		auto operator&=	(Key) -> Key;
		auto operator|= (Key) -> Key;
		auto operator<<=(Key) -> Key;
		auto operator>>=(Key) -> Key;
		auto operator==	(Key) -> Key;
		auto operator!=	(Key) -> Key;
		auto operator<=	(Key) -> Key;
		auto operator>=	(Key) -> Key;
		auto operator&&	(Key) -> Key;
		auto operator||	(Key) -> Key;
		auto operator,	(Key) -> Key;
		auto operator->*(Key) -> Key;
	};

	//	This type may change after deducing this is available
	using
		FoldKey
	=	auto
		(	Key
		::*
		)	(	Key
			)
		->	Key
	;
}
