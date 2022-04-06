module;

#include "Include.h"

export module Test.CMake:Private;

namespace
	Private
{
	export struct
		Secret
	{
		static Secret const sec;
	};
}
