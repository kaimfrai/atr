add_subdirectory(Offset)

add_single_file_modules(
	Constants.cpp
	Layout.cpp
	Name.cpp
	Info.cpp
	Alias.cpp
	NamedInfo.cpp
)

add_subdirectory(Compare)

add_single_file_modules(
	Finalize.cpp
	ConfigData.cpp
	ConfigBuilder.cpp
	Config.cpp
	DynamicTypes.cpp
	DynamicSize.cpp
	Storage.cpp
	ConfigAffixer.cpp
	Static.cpp
	Offset.cpp
	OffsetOf.cpp
	ConfigTransformer.cpp
)
