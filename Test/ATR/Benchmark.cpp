import ATR.Instance;
import ATR.Literals;

import Meta.Bit.Field;
import Meta.Memory.Size;

using ::Meta::Bit::Field;

using namespace ::Meta::Literals;

namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID<"Benchmark1">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("AAB", "ShortConst")
			("AAF", "DoubleConst")
			("AAC", "ArrayBoolMut")
			("AAA", "Int")
			("AAG", "Bool")
			("AAD", "ArrayBoolMut")
			("AAE", "Int")
			("AAH", "ArrayBool")
			// Randomized order
			("Double", Type<double>)
			("DoubleConst", Type<double const>)
			("ArrayDoubleConst", Type<double const[7]>)
			("Field", Type<Field<3_bit>>)
			("FieldConst", Type<Field<3_bit> const>)
			("ArrayBoolConst", Type<bool const[7]>)
			("Char", Type<char>)
			("Bool", Type<bool>)
			("ArrayBool", Type<bool[7]>)
			("ArrayInt", Type<int[7]>)
			("ArrayField", Type<Field<3_bit>[7]>)
			("Int", Type<int>)
			("ArrayChar", Type<char[7]>)
			("ArrayIntConst", Type<int const[7]>)
			("ShortConst", Type<short const>)
			("ArrayShort", Type<short[7]>)
			("BoolConst", Type<bool const>)
			("CharConst", Type<char const>)
			("ArrayCharConst", Type<char const[7]>)
			("ArrayDouble", Type<double[7]>)
			("IntConst", Type<int const>)
			("ArrayShortConst", Type<short const[7]>)
			("ArrayFieldConst", Type<Field<3_bit> const[7]>)
			("Short", Type<short>)
		;
	}

	auto constexpr
	(	Configure
	)	(	ID<"Benchmark2">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("AAG", "Bool")
			("AAD", "ArrayBoolMut")
			("AAE", "Int")
			("AAB", "ShortConst")
			("AAF", "DoubleConst")
			("AAH", "ArrayBool")
			("AAC", "ArrayBoolMut")
			("AAA", "Int")
			// Randomized order
			("Char", Type<char>)
			("ArrayInt", Type<int[7]>)
			("Short", Type<short>)
			("Bool", Type<bool>)
			("ArrayFieldConst", Type<Field<3_bit> const[7]>)
			("Field", Type<Field<3_bit>>)
			("CharConst", Type<char const>)
			("ArrayShort", Type<short[7]>)
			("FieldConst", Type<Field<3_bit> const>)
			("ArrayShortConst", Type<short const[7]>)
			("ArrayDouble", Type<double[7]>)
			("ShortConst", Type<short const>)
			("Double", Type<double>)
			("ArrayField", Type<Field<3_bit>[7]>)
			("IntConst", Type<int const>)
			("ArrayBool", Type<bool[7]>)
			("BoolConst", Type<bool const>)
			("DoubleConst", Type<double const>)
			("ArrayDoubleConst", Type<double const[7]>)
			("ArrayBoolConst", Type<bool const[7]>)
			("ArrayChar", Type<char[7]>)
			("ArrayCharConst", Type<char const[7]>)
			("Int", Type<int>)
			("ArrayIntConst", Type<int const[7]>)
		;
	}

	auto constexpr
	(	Configure
	)	(	ID<"Benchmark3">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("AAG", "Bool")
			("AAD", "ArrayBoolMut")
			("AAE", "Int")
			("AAB", "ShortConst")
			("AAF", "DoubleConst")
			("AAH", "ArrayBool")
			("AAC", "ArrayBoolMut")
			("AAA", "Int")
			// Randomized order
			("ArrayBool", Type<bool[7]>)
			("ArrayDouble", Type<double[7]>)
			("CharConst", Type<char const>)
			("ArrayFieldConst", Type<Field<3_bit> const[7]>)
			("ArrayField", Type<Field<3_bit>[7]>)
			("ArrayShortConst", Type<short const[7]>)
			("DoubleConst", Type<double const>)
			("IntConst", Type<int const>)
			("Char", Type<char>)
			("ArrayShort", Type<short[7]>)
			("ArrayCharConst", Type<char const[7]>)
			("ShortConst", Type<short const>)
			("Int", Type<int>)
			("ArrayChar", Type<char[7]>)
			("ArrayDoubleConst", Type<double const[7]>)
			("ArrayBoolConst", Type<bool const[7]>)
			("Field", Type<Field<3_bit>>)
			("BoolConst", Type<bool const>)
			("ArrayInt", Type<int[7]>)
			("ArrayIntConst", Type<int const[7]>)
			("Double", Type<double>)
			("FieldConst", Type<Field<3_bit> const>)
			("Short", Type<short>)
			("Bool", Type<bool>)
		;
	}

	auto constexpr
	(	Configure
	)	(	ID<"Benchmark4">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("AAG", "Bool")
			("AAD", "ArrayBoolMut")
			("AAE", "Int")
			("AAB", "ShortConst")
			("AAF", "DoubleConst")
			("AAH", "ArrayBool")
			("AAC", "ArrayBoolMut")
			("AAA", "Int")
			// Randomized order
			("FieldConst", Type<Field<3_bit> const>)
			("ArrayCharConst", Type<char const[7]>)
			("DoubleConst", Type<double const>)
			("ArrayField", Type<Field<3_bit>[7]>)
			("ArrayShortConst", Type<short const[7]>)
			("Char", Type<char>)
			("BoolConst", Type<bool const>)
			("ArrayBoolConst", Type<bool const[7]>)
			("Field", Type<Field<3_bit>>)
			("Int", Type<int>)
			("ArrayShort", Type<short[7]>)
			("ShortConst", Type<short const>)
			("ArrayDoubleConst", Type<double const[7]>)
			("ArrayChar", Type<char[7]>)
			("IntConst", Type<int const>)
			("ArrayIntConst", Type<int const[7]>)
			("ArrayBool", Type<bool[7]>)
			("Bool", Type<bool>)
			("Short", Type<short>)
			("ArrayFieldConst", Type<Field<3_bit> const[7]>)
			("CharConst", Type<char const>)
			("ArrayDouble", Type<double[7]>)
			("Double", Type<double>)
			("ArrayInt", Type<int[7]>)
		;
	}

	auto constexpr
	(	Configure
	)	(	ID<"Benchmark5">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("AAG", "Bool")
			("AAD", "ArrayBoolMut")
			("AAE", "Int")
			("AAB", "ShortConst")
			("AAF", "DoubleConst")
			("AAH", "ArrayBool")
			("AAC", "ArrayBoolMut")
			("AAA", "Int")
			// Randomized order
			("ArrayInt", Type<int[7]>)
			("Double", Type<double>)
			("ArrayShortConst", Type<short const[7]>)
			("ArrayCharConst", Type<char const[7]>)
			("Short", Type<short>)
			("BoolConst", Type<bool const>)
			("ArrayDoubleConst", Type<double const[7]>)
			("IntConst", Type<int const>)
			("FieldConst", Type<Field<3_bit> const>)
			("CharConst", Type<char const>)
			("ArrayBoolConst", Type<bool const[7]>)
			("ArrayShort", Type<short[7]>)
			("Bool", Type<bool>)
			("DoubleConst", Type<double const>)
			("ArrayChar", Type<char[7]>)
			("ArrayIntConst", Type<int const[7]>)
			("Int", Type<int>)
			("Char", Type<char>)
			("ShortConst", Type<short const>)
			("ArrayFieldConst", Type<Field<3_bit> const[7]>)
			("ArrayDouble", Type<double[7]>)
			("Field", Type<Field<3_bit>>)
			("ArrayBool", Type<bool[7]>)
			("ArrayField", Type<Field<3_bit>[7]>)
		;
	}

	auto constexpr
	(	Configure
	)	(	ID<"Benchmark6">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BoolConst", Type<bool const>)
			("ArrayFieldConst", Type<Field<3_bit> const[7]>)
			("ArrayCharConst", Type<char const[7]>)
			("Short", Type<short>)
			("Char", Type<char>)
			("ArrayBool", Type<bool[7]>)
			("Int", Type<int>)
			("ArrayDoubleConst", Type<double const[7]>)
			("ArrayShortConst", Type<short const[7]>)
			("ArrayBoolConst", Type<bool const[7]>)
			("ArrayIntConst", Type<int const[7]>)
			("Double", Type<double>)
			("DoubleConst", Type<double const>)
			("ArrayShort", Type<short[7]>)
			("Bool", Type<bool>)
			("ArrayInt", Type<int[7]>)
			("IntConst", Type<int const>)
			("FieldConst", Type<Field<3_bit> const>)
			("ArrayDouble", Type<double[7]>)
			("Field", Type<Field<3_bit>>)
			("ArrayField", Type<Field<3_bit>[7]>)
			("ArrayChar", Type<char[7]>)
			("ShortConst", Type<short const>)
			("CharConst", Type<char const>)
		;
	}

	auto constexpr
	(	Configure
	)	(	ID<"Benchmark7">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("ArrayBoolConst", Type<bool const[7]>)
			("CharConst", Type<char const>)
			("ArrayField", Type<Field<3_bit>[7]>)
			("Field", Type<Field<3_bit>>)
			("Double", Type<double>)
			("ArrayDoubleConst", Type<double const[7]>)
			("FieldConst", Type<Field<3_bit> const>)
			("ArrayChar", Type<char[7]>)
			("IntConst", Type<int const>)
			("ShortConst", Type<short const>)
			("ArrayShort", Type<short[7]>)
			("DoubleConst", Type<double const>)
			("Bool", Type<bool>)
			("ArrayIntConst", Type<int const[7]>)
			("Int", Type<int>)
			("ArrayCharConst", Type<char const[7]>)
			("ArrayInt", Type<int[7]>)
			("ArrayBool", Type<bool[7]>)
			("ArrayShortConst", Type<short const[7]>)
			("ArrayDouble", Type<double[7]>)
			("ArrayFieldConst", Type<Field<3_bit> const[7]>)
			("Char", Type<char>)
			("Short", Type<short>)
			("BoolConst", Type<bool const>)
		;
	}

	auto constexpr
	(	Configure
	)	(	ID<"Benchmark8">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("DoubleConst", Type<double const>)
			("BoolConst", Type<bool const>)
			("ArrayDouble", Type<double[7]>)
			("Double", Type<double>)
			("ShortConst", Type<short const>)
			("ArrayCharConst", Type<char const[7]>)
			("CharConst", Type<char const>)
			("IntConst", Type<int const>)
			("ArrayBool", Type<bool[7]>)
			("Field", Type<Field<3_bit>>)
			("ArrayFieldConst", Type<Field<3_bit> const[7]>)
			("ArrayBoolConst", Type<bool const[7]>)
			("ArrayDoubleConst", Type<double const[7]>)
			("ArrayField", Type<Field<3_bit>[7]>)
			("ArrayShort", Type<short[7]>)
			("ArrayChar", Type<char[7]>)
			("Int", Type<int>)
			("FieldConst", Type<Field<3_bit> const>)
			("Char", Type<char>)
			("ArrayIntConst", Type<int const[7]>)
			("Bool", Type<bool>)
			("ArrayShortConst", Type<short const[7]>)
			("ArrayInt", Type<int[7]>)
			("Short", Type<short>)
		;
	}
}

auto constexpr ExpectedSize = 2*(8*(sizeof(double) + sizeof(int) + sizeof(short) + sizeof(char)) + 1 + 3);

static_assert(sizeof(::ATR::Type<"Benchmark1">) == ExpectedSize);
static_assert(sizeof(::ATR::Type<"Benchmark2">) == ExpectedSize);
static_assert(sizeof(::ATR::Type<"Benchmark3">) == ExpectedSize);
static_assert(sizeof(::ATR::Type<"Benchmark4">) == ExpectedSize);
static_assert(sizeof(::ATR::Type<"Benchmark5">) == ExpectedSize);
static_assert(sizeof(::ATR::Type<"Benchmark6">) == ExpectedSize);
static_assert(sizeof(::ATR::Type<"Benchmark7">) == ExpectedSize);
static_assert(sizeof(::ATR::Type<"Benchmark8">) == ExpectedSize);
