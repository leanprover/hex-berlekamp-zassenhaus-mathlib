import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus-mathlib» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekampZassenhaus from git
  "https://github.com/leanprover/hex-berlekamp-zassenhaus.git" @ "3bdd8d508bad12f7026ce15f2d2a6ca95ef3b805"

require HexBerlekampMathlib from git
  "https://github.com/leanprover/hex-berlekamp-mathlib.git" @ "01269ade66f322aa8a0a75bb1fc46e33bc508e1c"

require HexHenselMathlib from git
  "https://github.com/leanprover/hex-hensel-mathlib.git" @ "2abf6b630eaaf163bea6819d97cb6c4f3315eedc"

require HexPolyZMathlib from git
  "https://github.com/leanprover/hex-poly-z-mathlib.git" @ "8eddc77ae34aab4bea734fc737e1bd496e4fc5a8"

require HexMatrixMathlib from git
  "https://github.com/leanprover/hex-matrix-mathlib.git" @ "b4516b56eef24f60af1e344932b333c60337b0ee"

require HexLLLMathlib from git
  "https://github.com/leanprover/hex-lll-mathlib.git" @ "bb91c9383eb715c0d358ca0ef1417404aec6db02"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.32.2"

@[default_target]
lean_lib HexBerlekampZassenhausMathlib

@[default_target]
lean_lib HexBerlekampZassenhausMathlibModules where
  globs := #[`HexBerlekampZassenhausMathlib.All]

lean_lib HexBerlekampZassenhausMathlibTests where
  globs := #[`HexBerlekampZassenhausMathlib.FactorPolyTests, `HexBerlekampZassenhausMathlib.IrreducibilityTests]
