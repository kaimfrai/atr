module;

#include "Include.h"

export module Test.CMake.FooBar:Private;

namespace
	Private
{
	export struct
		Secret
	{
		Secret const static sec;
	};
}
