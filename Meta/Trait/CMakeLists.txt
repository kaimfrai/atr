add_single_file_modules(
	ArrayElement.cpp
	ArrayExtent.cpp
	BitAlign.cpp
	BitSize.cpp
	Empty.cpp
)

add_subdirectory(Match)

add_single_file_modules(
	Data.cpp
	Fund_Array.cpp
	Int_Enum_Class_LRef_Free.cpp
	Scalar_Ref_Void.cpp
	Signed_Scoped_Ptr.cpp
)
