add_single_file_modules(
	Specifier.cpp
	TypeID.cpp
	Type.cpp
)

add_subdirectory(Transform)

add_single_file_modules(
	Array.cpp
	Const.cpp
	Construct.cpp
	CopyRef.cpp
	CV.cpp
	Ellipsis.cpp
	Extent.cpp
	Index.cpp
	LRef.cpp
	Mutable.cpp
	Noexcept.cpp
	Owner.cpp
	Pointer.cpp
	Reference.cpp
	RRef.cpp
	Sequence.cpp
	Volatile.cpp
)

add_subdirectory(Type)
