import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus-mathlib» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekampZassenhaus from git
  "https://github.com/leanprover/hex-berlekamp-zassenhaus.git" @ "274cfcbf2477ef7b3004ad2fa7cc8715c19dd4dc"

require HexBerlekampMathlib from git
  "https://github.com/leanprover/hex-berlekamp-mathlib.git" @ "61c011715549e420039b8f598fcb656745627e42"

require HexHenselMathlib from git
  "https://github.com/leanprover/hex-hensel-mathlib.git" @ "303bf387a450041237f718a4bb9f4b9fabb2e508"

require HexPolyZMathlib from git
  "https://github.com/leanprover/hex-poly-z-mathlib.git" @ "04198bd58704d5339431b82519ca963162669a2d"

require HexMatrixMathlib from git
  "https://github.com/leanprover/hex-matrix-mathlib.git" @ "be15f40e4942fe78ed28f037c9407a94bc3c10ce"

require HexLLLMathlib from git
  "https://github.com/leanprover/hex-lll-mathlib.git" @ "c10d6681dee9a4f963c1035bcbe34fc3eb60a769"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.32.2"

@[default_target]
lean_lib HexBerlekampZassenhausMathlib

lean_lib HexBerlekampZassenhausMathlibTests where
  globs := #[`HexBerlekampZassenhausMathlib.FactorPolyTests, `HexBerlekampZassenhausMathlib.IrreducibilityTests]
