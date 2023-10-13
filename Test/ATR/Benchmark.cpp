import ATR.Instance;
import ATR.Literals;

import Meta.Bit.Field;
import Meta.ID;
import Meta.Memory.Size;

using ::ATR::Instance;
using ::Meta::Bit::Field;
using ::Meta::ID;

using namespace ::Meta::Literals;

namespace
	ATR::Member
{
	// TODO Rename Const as it is no longer supported
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Benchmark1">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Alias("AAB", "ShortConst")
			.	Alias("AAF", "DoubleConst")
			.	Alias("AAC", "ArrayBoolMut")
			.	Alias("AAA", "Int")
			.	Alias("AAG", "Bool")
			.	Alias("AAD", "ArrayBoolMut")
			.	Alias("AAE", "Int")
			.	Alias("AAH", "ArrayBool")
				// Randomized order
			.	Member("Double", Type<double>)
			.	Member("DoubleConst", Type<double>)
			.	Member("ArrayDoubleConst", Type<double[7]>)
			.	Member("Field", Type<Field<3_bit>>)
			.	Member("FieldConst", Type<Field<3_bit>>)
			.	Member("ArrayBoolConst", Type<bool[7]>)
			.	Member("Char", Type<char>)
			.	Member("Bool", Type<bool>)
			.	Member("ArrayBool", Type<bool[7]>)
			.	Member("ArrayInt", Type<int[7]>)
			.	Member("ArrayField", Type<Field<3_bit>[7]>)
			.	Member("Int", Type<int>)
			.	Member("ArrayChar", Type<char[7]>)
			.	Member("ArrayIntConst", Type<int[7]>)
			.	Member("ShortConst", Type<short>)
			.	Member("ArrayShort", Type<short[7]>)
			.	Member("BoolConst", Type<bool>)
			.	Member("CharConst", Type<char>)
			.	Member("ArrayCharConst", Type<char[7]>)
			.	Member("ArrayDouble", Type<double[7]>)
			.	Member("IntConst", Type<int>)
			.	Member("ArrayShortConst", Type<short[7]>)
			.	Member("ArrayFieldConst", Type<Field<3_bit>[7]>)
			.	Member("Short", Type<short>)
		;
	}

	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Benchmark2">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Alias("AAG", "Bool")
			.	Alias("AAD", "ArrayBoolMut")
			.	Alias("AAE", "Int")
			.	Alias("AAB", "ShortConst")
			.	Alias("AAF", "DoubleConst")
			.	Alias("AAH", "ArrayBool")
			.	Alias("AAC", "ArrayBoolMut")
			.	Alias("AAA", "Int")
				// Randomized order
			.	Member("Char", Type<char>)
			.	Member("ArrayInt", Type<int[7]>)
			.	Member("Short", Type<short>)
			.	Member("Bool", Type<bool>)
			.	Member("ArrayFieldConst", Type<Field<3_bit>[7]>)
			.	Member("Field", Type<Field<3_bit>>)
			.	Member("CharConst", Type<char>)
			.	Member("ArrayShort", Type<short[7]>)
			.	Member("FieldConst", Type<Field<3_bit>>)
			.	Member("ArrayShortConst", Type<short[7]>)
			.	Member("ArrayDouble", Type<double[7]>)
			.	Member("ShortConst", Type<short>)
			.	Member("Double", Type<double>)
			.	Member("ArrayField", Type<Field<3_bit>[7]>)
			.	Member("IntConst", Type<int>)
			.	Member("ArrayBool", Type<bool[7]>)
			.	Member("BoolConst", Type<bool>)
			.	Member("DoubleConst", Type<double>)
			.	Member("ArrayDoubleConst", Type<double[7]>)
			.	Member("ArrayBoolConst", Type<bool[7]>)
			.	Member("ArrayChar", Type<char[7]>)
			.	Member("ArrayCharConst", Type<char[7]>)
			.	Member("Int", Type<int>)
			.	Member("ArrayIntConst", Type<int[7]>)
		;
	}

	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Benchmark3">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Alias("AAG", "Bool")
			.	Alias("AAD", "ArrayBoolMut")
			.	Alias("AAE", "Int")
			.	Alias("AAB", "ShortConst")
			.	Alias("AAF", "DoubleConst")
			.	Alias("AAH", "ArrayBool")
			.	Alias("AAC", "ArrayBoolMut")
			.	Alias("AAA", "Int")
				// Randomized order
			.	Member("ArrayBool", Type<bool[7]>)
			.	Member("ArrayDouble", Type<double[7]>)
			.	Member("CharConst", Type<char>)
			.	Member("ArrayFieldConst", Type<Field<3_bit>[7]>)
			.	Member("ArrayField", Type<Field<3_bit>[7]>)
			.	Member("ArrayShortConst", Type<short[7]>)
			.	Member("DoubleConst", Type<double>)
			.	Member("IntConst", Type<int>)
			.	Member("Char", Type<char>)
			.	Member("ArrayShort", Type<short[7]>)
			.	Member("ArrayCharConst", Type<char[7]>)
			.	Member("ShortConst", Type<short>)
			.	Member("Int", Type<int>)
			.	Member("ArrayChar", Type<char[7]>)
			.	Member("ArrayDoubleConst", Type<double[7]>)
			.	Member("ArrayBoolConst", Type<bool[7]>)
			.	Member("Field", Type<Field<3_bit>>)
			.	Member("BoolConst", Type<bool>)
			.	Member("ArrayInt", Type<int[7]>)
			.	Member("ArrayIntConst", Type<int[7]>)
			.	Member("Double", Type<double>)
			.	Member("FieldConst", Type<Field<3_bit>>)
			.	Member("Short", Type<short>)
			.	Member("Bool", Type<bool>)
		;
	}

	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Benchmark4">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Alias("AAG", "Bool")
			.	Alias("AAD", "ArrayBoolMut")
			.	Alias("AAE", "Int")
			.	Alias("AAB", "ShortConst")
			.	Alias("AAF", "DoubleConst")
			.	Alias("AAH", "ArrayBool")
			.	Alias("AAC", "ArrayBoolMut")
			.	Alias("AAA", "Int")
				// Randomized order
			.	Member("FieldConst", Type<Field<3_bit>>)
			.	Member("ArrayCharConst", Type<char[7]>)
			.	Member("DoubleConst", Type<double>)
			.	Member("ArrayField", Type<Field<3_bit>[7]>)
			.	Member("ArrayShortConst", Type<short[7]>)
			.	Member("Char", Type<char>)
			.	Member("BoolConst", Type<bool>)
			.	Member("ArrayBoolConst", Type<bool[7]>)
			.	Member("Field", Type<Field<3_bit>>)
			.	Member("Int", Type<int>)
			.	Member("ArrayShort", Type<short[7]>)
			.	Member("ShortConst", Type<short>)
			.	Member("ArrayDoubleConst", Type<double[7]>)
			.	Member("ArrayChar", Type<char[7]>)
			.	Member("IntConst", Type<int>)
			.	Member("ArrayIntConst", Type<int[7]>)
			.	Member("ArrayBool", Type<bool[7]>)
			.	Member("Bool", Type<bool>)
			.	Member("Short", Type<short>)
			.	Member("ArrayFieldConst", Type<Field<3_bit>[7]>)
			.	Member("CharConst", Type<char>)
			.	Member("ArrayDouble", Type<double[7]>)
			.	Member("Double", Type<double>)
			.	Member("ArrayInt", Type<int[7]>)
		;
	}

	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Benchmark5">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Alias("AAG", "Bool")
			.	Alias("AAD", "ArrayBoolMut")
			.	Alias("AAE", "Int")
			.	Alias("AAB", "ShortConst")
			.	Alias("AAF", "DoubleConst")
			.	Alias("AAH", "ArrayBool")
			.	Alias("AAC", "ArrayBoolMut")
			.	Alias("AAA", "Int")
				// Randomized order
			.	Member("ArrayInt", Type<int[7]>)
			.	Member("Double", Type<double>)
			.	Member("ArrayShortConst", Type<short[7]>)
			.	Member("ArrayCharConst", Type<char[7]>)
			.	Member("Short", Type<short>)
			.	Member("BoolConst", Type<bool>)
			.	Member("ArrayDoubleConst", Type<double[7]>)
			.	Member("IntConst", Type<int>)
			.	Member("FieldConst", Type<Field<3_bit>>)
			.	Member("CharConst", Type<char>)
			.	Member("ArrayBoolConst", Type<bool[7]>)
			.	Member("ArrayShort", Type<short[7]>)
			.	Member("Bool", Type<bool>)
			.	Member("DoubleConst", Type<double>)
			.	Member("ArrayChar", Type<char[7]>)
			.	Member("ArrayIntConst", Type<int[7]>)
			.	Member("Int", Type<int>)
			.	Member("Char", Type<char>)
			.	Member("ShortConst", Type<short>)
			.	Member("ArrayFieldConst", Type<Field<3_bit>[7]>)
			.	Member("ArrayDouble", Type<double[7]>)
			.	Member("Field", Type<Field<3_bit>>)
			.	Member("ArrayBool", Type<bool[7]>)
			.	Member("ArrayField", Type<Field<3_bit>[7]>)
		;
	}

	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Benchmark6">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Member("BoolConst", Type<bool>)
			.	Member("ArrayFieldConst", Type<Field<3_bit>[7]>)
			.	Member("ArrayCharConst", Type<char[7]>)
			.	Member("Short", Type<short>)
			.	Member("Char", Type<char>)
			.	Member("ArrayBool", Type<bool[7]>)
			.	Member("Int", Type<int>)
			.	Member("ArrayDoubleConst", Type<double[7]>)
			.	Member("ArrayShortConst", Type<short[7]>)
			.	Member("ArrayBoolConst", Type<bool[7]>)
			.	Member("ArrayIntConst", Type<int[7]>)
			.	Member("Double", Type<double>)
			.	Member("DoubleConst", Type<double>)
			.	Member("ArrayShort", Type<short[7]>)
			.	Member("Bool", Type<bool>)
			.	Member("ArrayInt", Type<int[7]>)
			.	Member("IntConst", Type<int>)
			.	Member("FieldConst", Type<Field<3_bit>>)
			.	Member("ArrayDouble", Type<double[7]>)
			.	Member("Field", Type<Field<3_bit>>)
			.	Member("ArrayField", Type<Field<3_bit>[7]>)
			.	Member("ArrayChar", Type<char[7]>)
			.	Member("ShortConst", Type<short>)
			.	Member("CharConst", Type<char>)
		;
	}

	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Benchmark7">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Member("ArrayBoolConst", Type<bool[7]>)
			.	Member("CharConst", Type<char>)
			.	Member("ArrayField", Type<Field<3_bit>[7]>)
			.	Member("Field", Type<Field<3_bit>>)
			.	Member("Double", Type<double>)
			.	Member("ArrayDoubleConst", Type<double[7]>)
			.	Member("FieldConst", Type<Field<3_bit>>)
			.	Member("ArrayChar", Type<char[7]>)
			.	Member("IntConst", Type<int>)
			.	Member("ShortConst", Type<short>)
			.	Member("ArrayShort", Type<short[7]>)
			.	Member("DoubleConst", Type<double>)
			.	Member("Bool", Type<bool>)
			.	Member("ArrayIntConst", Type<int[7]>)
			.	Member("Int", Type<int>)
			.	Member("ArrayCharConst", Type<char[7]>)
			.	Member("ArrayInt", Type<int[7]>)
			.	Member("ArrayBool", Type<bool[7]>)
			.	Member("ArrayShortConst", Type<short[7]>)
			.	Member("ArrayDouble", Type<double[7]>)
			.	Member("ArrayFieldConst", Type<Field<3_bit>[7]>)
			.	Member("Char", Type<char>)
			.	Member("Short", Type<short>)
			.	Member("BoolConst", Type<bool>)
		;
	}

	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"Benchmark8">
		)
	->	auto&&
	{	return
			o_rComposer
			.	Member("DoubleConst", Type<double>)
			.	Member("BoolConst", Type<bool>)
			.	Member("ArrayDouble", Type<double[7]>)
			.	Member("Double", Type<double>)
			.	Member("ShortConst", Type<short>)
			.	Member("ArrayCharConst", Type<char[7]>)
			.	Member("CharConst", Type<char>)
			.	Member("IntConst", Type<int>)
			.	Member("ArrayBool", Type<bool[7]>)
			.	Member("Field", Type<Field<3_bit>>)
			.	Member("ArrayFieldConst", Type<Field<3_bit>[7]>)
			.	Member("ArrayBoolConst", Type<bool[7]>)
			.	Member("ArrayDoubleConst", Type<double[7]>)
			.	Member("ArrayField", Type<Field<3_bit>[7]>)
			.	Member("ArrayShort", Type<short[7]>)
			.	Member("ArrayChar", Type<char[7]>)
			.	Member("Int", Type<int>)
			.	Member("FieldConst", Type<Field<3_bit>>)
			.	Member("Char", Type<char>)
			.	Member("ArrayIntConst", Type<int[7]>)
			.	Member("Bool", Type<bool>)
			.	Member("ArrayShortConst", Type<short[7]>)
			.	Member("ArrayInt", Type<int[7]>)
			.	Member("Short", Type<short>)
		;
	}
}

auto constexpr inline ExpectedSize = 2*(8*(sizeof(double) + sizeof(int) + sizeof(short) + sizeof(char)) + 1 + 3);

static_assert(sizeof(Instance<ID<"Benchmark1">>) == ExpectedSize);
static_assert(sizeof(Instance<ID<"Benchmark2">>) == ExpectedSize);
static_assert(sizeof(Instance<ID<"Benchmark3">>) == ExpectedSize);
static_assert(sizeof(Instance<ID<"Benchmark4">>) == ExpectedSize);
static_assert(sizeof(Instance<ID<"Benchmark5">>) == ExpectedSize);
static_assert(sizeof(Instance<ID<"Benchmark6">>) == ExpectedSize);
static_assert(sizeof(Instance<ID<"Benchmark7">>) == ExpectedSize);
static_assert(sizeof(Instance<ID<"Benchmark8">>) == ExpectedSize);
