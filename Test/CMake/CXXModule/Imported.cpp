export module Test.CMake.CXXModule.Imported;

export import Test.CMake.CXXModule.TransImported;
import Test.CMake.CXXModule.DoubleImport;

export inline int GetInt() { return doubleValue(12) - GetTransInt(); }
