import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus-mathlib» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekampZassenhaus from git
  "https://github.com/leanprover/hex-berlekamp-zassenhaus.git" @ "d722c2174a7af8bf3a21eab2e671b82e76b03183"

require HexBerlekampMathlib from git
  "https://github.com/leanprover/hex-berlekamp-mathlib.git" @ "f99639e097aca91b4e9d5a2dac25701b5a14a38d"

require HexHenselMathlib from git
  "https://github.com/leanprover/hex-hensel-mathlib.git" @ "f5251d05e086abb4fba6b60fbec7dfdde9782f8f"

require HexPolyZMathlib from git
  "https://github.com/leanprover/hex-poly-z-mathlib.git" @ "4d0029cb526c4debf30bd06230b841b711817c1a"

require HexMatrixMathlib from git
  "https://github.com/leanprover/hex-matrix-mathlib.git" @ "7da10508fdb5a489805004e5550992662b8b533c"

require HexLLLMathlib from git
  "https://github.com/leanprover/hex-lll-mathlib.git" @ "f74131145e56cff7819a980bde156b9555630787"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.34.0-rc2"

@[default_target]
lean_lib HexBerlekampZassenhausMathlib

@[default_target]
lean_lib HexBerlekampZassenhausMathlibModules where
  globs := #[`HexBerlekampZassenhausMathlib.All]

lean_lib HexBerlekampZassenhausMathlibTests where
  globs := #[`HexBerlekampZassenhausMathlib.FactorPolyTests, `HexBerlekampZassenhausMathlib.IrreducibilityTests]
