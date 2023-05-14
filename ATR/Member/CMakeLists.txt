add_single_file_modules(
	Constants.cpp
	Name.cpp
	Info.cpp
)

add_subdirectory(Compare)

add_single_file_modules(
	CountedBuffer.cpp
	Alias.cpp
	AlignBuffer.cpp
	NamedInfo.cpp
	NamedType.cpp
	LayoutBuffer.cpp
	Ordered.cpp
	ConfigData.cpp
	ConfigBuilder.cpp
	Finalize.cpp
	Config.cpp
	Storage.cpp
	ConfigPrefixer.cpp
	Static.cpp
	ConfigTransformer.cpp
)
