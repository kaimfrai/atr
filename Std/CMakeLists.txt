add_module(Std.Algorithm
	Algorithm.cpp
)

add_module(Std.Limits
	Limits.cpp
)

add_module(Std.TypeTraits
	TypeTraits.cpp
)
add_module(Std.Utility
	Utility.cpp
)

add_module(Std
	Std.cpp

	${PREBUILT_MODULE_PATH}/Std.Algorithm.pcm
	${PREBUILT_MODULE_PATH}/Std.Limits.pcm
	${PREBUILT_MODULE_PATH}/Std.TypeTraits.pcm
	${PREBUILT_MODULE_PATH}/Std.Utility.pcm
)
