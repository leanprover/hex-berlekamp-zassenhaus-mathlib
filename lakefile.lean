import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus-mathlib» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekampZassenhaus from git
  "https://github.com/leanprover/hex-berlekamp-zassenhaus.git" @ "f368ea2a54a08d7aa7f535c044e51f5e5fca2eb4"

require HexBerlekampMathlib from git
  "https://github.com/leanprover/hex-berlekamp-mathlib.git" @ "ce0cf96b454f78e8c3b3a202256bfa097dd0c55f"

require HexHenselMathlib from git
  "https://github.com/leanprover/hex-hensel-mathlib.git" @ "e3e1fe9fe5560e78ffc07a939a5a337889b9aa6c"

require HexPolyZMathlib from git
  "https://github.com/leanprover/hex-poly-z-mathlib.git" @ "d9ce0a6119e39cdb5b2bd3761dfd47b965058d87"

require HexMatrixMathlib from git
  "https://github.com/leanprover/hex-matrix-mathlib.git" @ "362370b6f82c57a6bde315610a2f1ac62b40c926"

require HexLLLMathlib from git
  "https://github.com/leanprover/hex-lll-mathlib.git" @ "a5b45bb510415841637ff2f3517bb248d14bfb8e"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.33.0-rc1"

@[default_target]
lean_lib HexBerlekampZassenhausMathlib

@[default_target]
lean_lib HexBerlekampZassenhausMathlibModules where
  globs := #[`HexBerlekampZassenhausMathlib.All]

lean_lib HexBerlekampZassenhausMathlibTests where
  globs := #[`HexBerlekampZassenhausMathlib.FactorPolyTests, `HexBerlekampZassenhausMathlib.IrreducibilityTests]
