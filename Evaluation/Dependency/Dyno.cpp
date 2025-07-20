module;

#include <dyno.hpp>

export module Evaluation.Dependency.Dyno;

export namespace
	dyno
{
	using ::dyno::default_concept_map;
	using ::dyno::make_concept_map;
	using ::dyno::method;
	using ::dyno::poly;
	using ::dyno::requires_;
	using ::dyno::sbo_storage;
}

export namespace
	dyno::inline literals
{
	using ::dyno::literals::operator""_s;
}
