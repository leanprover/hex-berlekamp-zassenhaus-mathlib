import Lake
open System Lake DSL

package «hex-berlekamp-zassenhaus-mathlib» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBasic from git
  "https://github.com/leanprover/hex-basic.git" @ "v0.9.0"
require HexArith from git
  "https://github.com/leanprover/hex-arith.git" @ "v0.9.0"
require HexPoly from git
  "https://github.com/leanprover/hex-poly.git" @ "v0.9.0"
require HexModArith from git
  "https://github.com/leanprover/hex-mod-arith.git" @ "v0.9.0"
require HexMatrix from git
  "https://github.com/leanprover/hex-matrix.git" @ "v0.9.0"
require HexMatrixMathlib from git
  "https://github.com/leanprover/hex-matrix-mathlib.git" @ "v0.9.0"
require HexPolyMathlib from git
  "https://github.com/leanprover/hex-poly-mathlib.git" @ "v0.9.0"
require HexPolyFp from git
  "https://github.com/leanprover/hex-poly-fp.git" @ "v0.9.0"
require HexPolyZ from git
  "https://github.com/leanprover/hex-poly-z.git" @ "v0.9.0"
require HexModArithMathlib from git
  "https://github.com/leanprover/hex-mod-arith-mathlib.git" @ "v0.9.0"
require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "v0.9.0"
require HexPolyZMathlib from git
  "https://github.com/leanprover/hex-poly-z-mathlib.git" @ "v0.9.0"
require HexHenselMathlib from git
  "https://github.com/leanprover/hex-hensel-mathlib.git" @ "v0.9.0"
require HexRowReduce from git
  "https://github.com/leanprover/hex-row-reduce.git" @ "v0.9.0"
require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "v0.9.0"
require HexRowReduceMathlib from git
  "https://github.com/leanprover/hex-row-reduce-mathlib.git" @ "v0.9.0"
require HexBerlekampMathlib from git
  "https://github.com/leanprover/hex-berlekamp-mathlib.git" @ "v0.9.0"
require HexGramSchmidtMathlib from git
  "https://github.com/leanprover/hex-gram-schmidt-mathlib.git" @ "v0.9.0"
require HexBerlekampZassenhaus from git
  "https://github.com/leanprover/hex-berlekamp-zassenhaus.git" @ "v0.9.0"
require HexLLLMathlib from git
  "https://github.com/leanprover/hex-lll-mathlib.git" @ "v0.9.0"
require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "6b7abb3c7686292736be2955bd3eb9ebf63b456a"

@[default_target]
lean_lib HexBerlekampZassenhausMathlib where

@[default_target]
lean_lib HexBerlekampZassenhausMathlibModules where
  globs := #[`HexBerlekampZassenhausMathlib.All]

lean_lib HexBerlekampZassenhausMathlibTests where
  globs := #[`HexBerlekampZassenhausMathlib.FactorPolyTests, `HexBerlekampZassenhausMathlib.PublicReplayTests, `HexBerlekampZassenhausMathlib.QuotationTests, `HexBerlekampZassenhausMathlib.IrreducibilityTests]
