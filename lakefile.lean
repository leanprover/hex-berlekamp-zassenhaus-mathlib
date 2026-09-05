import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus-mathlib» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekampZassenhaus from git
  "https://github.com/leanprover/hex-berlekamp-zassenhaus.git" @ "c70ef6505531c6828df48b5266af5d359d8ab279"

require HexBerlekampMathlib from git
  "https://github.com/leanprover/hex-berlekamp-mathlib.git" @ "69d137c934e9b1d2a9212c30e7481a231ef4e66d"

require HexHenselMathlib from git
  "https://github.com/leanprover/hex-hensel-mathlib.git" @ "39c4ceb95256e25ee4f0df6cede568fb95a6c2ce"

require HexPolyZMathlib from git
  "https://github.com/leanprover/hex-poly-z-mathlib.git" @ "781fcf515411217c4e03e4f607ce8a84ef818bcb"

require HexMatrixMathlib from git
  "https://github.com/leanprover/hex-matrix-mathlib.git" @ "a17d02deaac889ea58c8499b97da1c71205edf08"

require HexLLLMathlib from git
  "https://github.com/leanprover/hex-lll-mathlib.git" @ "50dc05d5545dd7fd1e3a6b6f9011098543abdac3"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.34.0-rc2"

@[default_target]
lean_lib HexBerlekampZassenhausMathlib

@[default_target]
lean_lib HexBerlekampZassenhausMathlibModules where
  globs := #[`HexBerlekampZassenhausMathlib.All]

lean_lib HexBerlekampZassenhausMathlibTests where
  globs := #[`HexBerlekampZassenhausMathlib.FactorPolyTests, `HexBerlekampZassenhausMathlib.IrreducibilityTests]
