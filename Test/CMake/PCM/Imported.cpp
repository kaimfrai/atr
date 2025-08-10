export module Test.CMake.PCM.Imported;

export import Test.CMake.PCM.TransImported;
import Test.CMake.PCM.DoubleImport;

export inline int GetInt() { return doubleValue(12) - GetTransInt(); }
