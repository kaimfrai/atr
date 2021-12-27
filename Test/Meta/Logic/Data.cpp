export module Meta.Logic.Test.Data;

export import Meta.Logic;

export
{
	///	Constants
	auto constexpr inline T
	=	Meta::True;
	auto constexpr inline F
	=	Meta::False;

	/// Literals
	struct P{};
	auto constexpr inline p
	=	Meta::Atom<P>;
	struct Q{};
	auto constexpr inline q
	=	Meta::Atom<Q>;
	struct R{};
	auto constexpr inline r
	=	Meta::Atom<R>;

	///	Instatiate term patterns here
	auto constexpr inline
		term01
	=	(!p);
	auto constexpr inline
		term02
	=	(p and q);
	auto constexpr inline
		term03
	=	(p and q and r);
	auto constexpr inline
		term04
	=	(p or q);
	auto constexpr inline
		term05
	=	(p or q or r);
	auto constexpr inline
		term06
	=	(p and q or p and r);
	auto constexpr inline
		term07
	=	(p and q or p and r or !p and !q);
	auto constexpr inline
		term08
	=	(p and q or !p and !q or !q and r);
	auto constexpr inline
		term09
	=	(p and q or p and r or q and r);
	auto constexpr inline
		term10
	=	(p and q or !p and !q);
	auto constexpr inline
		term11
	=	(p and q or !p and !q or r);
	auto constexpr inline
		term12
	=	(p and q or !p and r);
	auto constexpr inline
		term13
	=	(p and q or !p and r or !q and !r);
	auto constexpr inline
		term14
	=	(p and !r or !p and !q or q and r);
	auto constexpr inline
		term15
	=	(p and q or r);
	auto constexpr inline
		term16
	=	(p and q and r or p and !q and !r);
	auto constexpr inline
		term17
	=	(p and q and r or p and !q and !r or !p and q and !r);
	auto constexpr inline
		term18
	=	(p and q and r or p and !q and !r or !p and q and !r or !p and !q and r);
	auto constexpr inline
		term19
	=	(p and q and r or !p and !q);
	auto constexpr inline
		term20
	=	(p and q and r or !p and !q or !p and !r);
	auto constexpr inline
		term21
	=	(p and q and r or !p and !q or !p and !r or !q and !r);
	auto constexpr inline
		term22
	=	(p and q and r or !p and !q and !r);
}
