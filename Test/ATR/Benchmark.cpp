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
	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Benchmark1">
		)
	->	auto&&
	{	return
		o_rConfig
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
		.	Member("DoubleConst", Type<double const>)
		.	Member("ArrayDoubleConst", Type<double const[7]>)
		.	Member("Field", Type<Field<3_bit>>)
		.	Member("FieldConst", Type<Field<3_bit> const>)
		.	Member("ArrayBoolConst", Type<bool const[7]>)
		.	Member("Char", Type<char>)
		.	Member("Bool", Type<bool>)
		.	Member("ArrayBool", Type<bool[7]>)
		.	Member("ArrayInt", Type<int[7]>)
		.	Member("ArrayField", Type<Field<3_bit>[7]>)
		.	Member("Int", Type<int>)
		.	Member("ArrayChar", Type<char[7]>)
		.	Member("ArrayIntConst", Type<int const[7]>)
		.	Member("ShortConst", Type<short const>)
		.	Member("ArrayShort", Type<short[7]>)
		.	Member("BoolConst", Type<bool const>)
		.	Member("CharConst", Type<char const>)
		.	Member("ArrayCharConst", Type<char const[7]>)
		.	Member("ArrayDouble", Type<double[7]>)
		.	Member("IntConst", Type<int const>)
		.	Member("ArrayShortConst", Type<short const[7]>)
		.	Member("ArrayFieldConst", Type<Field<3_bit> const[7]>)
		.	Member("Short", Type<short>)
		;
	}

	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Benchmark2">
		)
	->	auto&&
	{	return
		o_rConfig
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
		.	Member("ArrayFieldConst", Type<Field<3_bit> const[7]>)
		.	Member("Field", Type<Field<3_bit>>)
		.	Member("CharConst", Type<char const>)
		.	Member("ArrayShort", Type<short[7]>)
		.	Member("FieldConst", Type<Field<3_bit> const>)
		.	Member("ArrayShortConst", Type<short const[7]>)
		.	Member("ArrayDouble", Type<double[7]>)
		.	Member("ShortConst", Type<short const>)
		.	Member("Double", Type<double>)
		.	Member("ArrayField", Type<Field<3_bit>[7]>)
		.	Member("IntConst", Type<int const>)
		.	Member("ArrayBool", Type<bool[7]>)
		.	Member("BoolConst", Type<bool const>)
		.	Member("DoubleConst", Type<double const>)
		.	Member("ArrayDoubleConst", Type<double const[7]>)
		.	Member("ArrayBoolConst", Type<bool const[7]>)
		.	Member("ArrayChar", Type<char[7]>)
		.	Member("ArrayCharConst", Type<char const[7]>)
		.	Member("Int", Type<int>)
		.	Member("ArrayIntConst", Type<int const[7]>)
		;
	}

	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Benchmark3">
		)
	->	auto&&
	{	return
		o_rConfig
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
		.	Member("CharConst", Type<char const>)
		.	Member("ArrayFieldConst", Type<Field<3_bit> const[7]>)
		.	Member("ArrayField", Type<Field<3_bit>[7]>)
		.	Member("ArrayShortConst", Type<short const[7]>)
		.	Member("DoubleConst", Type<double const>)
		.	Member("IntConst", Type<int const>)
		.	Member("Char", Type<char>)
		.	Member("ArrayShort", Type<short[7]>)
		.	Member("ArrayCharConst", Type<char const[7]>)
		.	Member("ShortConst", Type<short const>)
		.	Member("Int", Type<int>)
		.	Member("ArrayChar", Type<char[7]>)
		.	Member("ArrayDoubleConst", Type<double const[7]>)
		.	Member("ArrayBoolConst", Type<bool const[7]>)
		.	Member("Field", Type<Field<3_bit>>)
		.	Member("BoolConst", Type<bool const>)
		.	Member("ArrayInt", Type<int[7]>)
		.	Member("ArrayIntConst", Type<int const[7]>)
		.	Member("Double", Type<double>)
		.	Member("FieldConst", Type<Field<3_bit> const>)
		.	Member("Short", Type<short>)
		.	Member("Bool", Type<bool>)
		;
	}

	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Benchmark4">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Alias("AAG", "Bool")
		.	Alias("AAD", "ArrayBoolMut")
		.	Alias("AAE", "Int")
		.	Alias("AAB", "ShortConst")
		.	Alias("AAF", "DoubleConst")
		.	Alias("AAH", "ArrayBool")
		.	Alias("AAC", "ArrayBoolMut")
		.	Alias("AAA", "Int")
			// Randomized order
		.	Member("FieldConst", Type<Field<3_bit> const>)
		.	Member("ArrayCharConst", Type<char const[7]>)
		.	Member("DoubleConst", Type<double const>)
		.	Member("ArrayField", Type<Field<3_bit>[7]>)
		.	Member("ArrayShortConst", Type<short const[7]>)
		.	Member("Char", Type<char>)
		.	Member("BoolConst", Type<bool const>)
		.	Member("ArrayBoolConst", Type<bool const[7]>)
		.	Member("Field", Type<Field<3_bit>>)
		.	Member("Int", Type<int>)
		.	Member("ArrayShort", Type<short[7]>)
		.	Member("ShortConst", Type<short const>)
		.	Member("ArrayDoubleConst", Type<double const[7]>)
		.	Member("ArrayChar", Type<char[7]>)
		.	Member("IntConst", Type<int const>)
		.	Member("ArrayIntConst", Type<int const[7]>)
		.	Member("ArrayBool", Type<bool[7]>)
		.	Member("Bool", Type<bool>)
		.	Member("Short", Type<short>)
		.	Member("ArrayFieldConst", Type<Field<3_bit> const[7]>)
		.	Member("CharConst", Type<char const>)
		.	Member("ArrayDouble", Type<double[7]>)
		.	Member("Double", Type<double>)
		.	Member("ArrayInt", Type<int[7]>)
		;
	}

	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Benchmark5">
		)
	->	auto&&
	{	return
		o_rConfig
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
		.	Member("ArrayShortConst", Type<short const[7]>)
		.	Member("ArrayCharConst", Type<char const[7]>)
		.	Member("Short", Type<short>)
		.	Member("BoolConst", Type<bool const>)
		.	Member("ArrayDoubleConst", Type<double const[7]>)
		.	Member("IntConst", Type<int const>)
		.	Member("FieldConst", Type<Field<3_bit> const>)
		.	Member("CharConst", Type<char const>)
		.	Member("ArrayBoolConst", Type<bool const[7]>)
		.	Member("ArrayShort", Type<short[7]>)
		.	Member("Bool", Type<bool>)
		.	Member("DoubleConst", Type<double const>)
		.	Member("ArrayChar", Type<char[7]>)
		.	Member("ArrayIntConst", Type<int const[7]>)
		.	Member("Int", Type<int>)
		.	Member("Char", Type<char>)
		.	Member("ShortConst", Type<short const>)
		.	Member("ArrayFieldConst", Type<Field<3_bit> const[7]>)
		.	Member("ArrayDouble", Type<double[7]>)
		.	Member("Field", Type<Field<3_bit>>)
		.	Member("ArrayBool", Type<bool[7]>)
		.	Member("ArrayField", Type<Field<3_bit>[7]>)
		;
	}

	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Benchmark6">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Member("BoolConst", Type<bool const>)
		.	Member("ArrayFieldConst", Type<Field<3_bit> const[7]>)
		.	Member("ArrayCharConst", Type<char const[7]>)
		.	Member("Short", Type<short>)
		.	Member("Char", Type<char>)
		.	Member("ArrayBool", Type<bool[7]>)
		.	Member("Int", Type<int>)
		.	Member("ArrayDoubleConst", Type<double const[7]>)
		.	Member("ArrayShortConst", Type<short const[7]>)
		.	Member("ArrayBoolConst", Type<bool const[7]>)
		.	Member("ArrayIntConst", Type<int const[7]>)
		.	Member("Double", Type<double>)
		.	Member("DoubleConst", Type<double const>)
		.	Member("ArrayShort", Type<short[7]>)
		.	Member("Bool", Type<bool>)
		.	Member("ArrayInt", Type<int[7]>)
		.	Member("IntConst", Type<int const>)
		.	Member("FieldConst", Type<Field<3_bit> const>)
		.	Member("ArrayDouble", Type<double[7]>)
		.	Member("Field", Type<Field<3_bit>>)
		.	Member("ArrayField", Type<Field<3_bit>[7]>)
		.	Member("ArrayChar", Type<char[7]>)
		.	Member("ShortConst", Type<short const>)
		.	Member("CharConst", Type<char const>)
		;
	}

	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Benchmark7">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Member("ArrayBoolConst", Type<bool const[7]>)
		.	Member("CharConst", Type<char const>)
		.	Member("ArrayField", Type<Field<3_bit>[7]>)
		.	Member("Field", Type<Field<3_bit>>)
		.	Member("Double", Type<double>)
		.	Member("ArrayDoubleConst", Type<double const[7]>)
		.	Member("FieldConst", Type<Field<3_bit> const>)
		.	Member("ArrayChar", Type<char[7]>)
		.	Member("IntConst", Type<int const>)
		.	Member("ShortConst", Type<short const>)
		.	Member("ArrayShort", Type<short[7]>)
		.	Member("DoubleConst", Type<double const>)
		.	Member("Bool", Type<bool>)
		.	Member("ArrayIntConst", Type<int const[7]>)
		.	Member("Int", Type<int>)
		.	Member("ArrayCharConst", Type<char const[7]>)
		.	Member("ArrayInt", Type<int[7]>)
		.	Member("ArrayBool", Type<bool[7]>)
		.	Member("ArrayShortConst", Type<short const[7]>)
		.	Member("ArrayDouble", Type<double[7]>)
		.	Member("ArrayFieldConst", Type<Field<3_bit> const[7]>)
		.	Member("Char", Type<char>)
		.	Member("Short", Type<short>)
		.	Member("BoolConst", Type<bool const>)
		;
	}

	auto constexpr inline
	(	Configure
	)	(	auto
			&&	o_rConfig
		,	ID<"Benchmark8">
		)
	->	auto&&
	{	return
		o_rConfig
		.	Member("DoubleConst", Type<double const>)
		.	Member("BoolConst", Type<bool const>)
		.	Member("ArrayDouble", Type<double[7]>)
		.	Member("Double", Type<double>)
		.	Member("ShortConst", Type<short const>)
		.	Member("ArrayCharConst", Type<char const[7]>)
		.	Member("CharConst", Type<char const>)
		.	Member("IntConst", Type<int const>)
		.	Member("ArrayBool", Type<bool[7]>)
		.	Member("Field", Type<Field<3_bit>>)
		.	Member("ArrayFieldConst", Type<Field<3_bit> const[7]>)
		.	Member("ArrayBoolConst", Type<bool const[7]>)
		.	Member("ArrayDoubleConst", Type<double const[7]>)
		.	Member("ArrayField", Type<Field<3_bit>[7]>)
		.	Member("ArrayShort", Type<short[7]>)
		.	Member("ArrayChar", Type<char[7]>)
		.	Member("Int", Type<int>)
		.	Member("FieldConst", Type<Field<3_bit> const>)
		.	Member("Char", Type<char>)
		.	Member("ArrayIntConst", Type<int const[7]>)
		.	Member("Bool", Type<bool>)
		.	Member("ArrayShortConst", Type<short const[7]>)
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
