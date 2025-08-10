export module Test.CMake.CXXModule.Imported;

import Test.CMake.CXXModule.TransImported;
import std;

export inline int GetInt() { return 12 - GetTransInt(); }
