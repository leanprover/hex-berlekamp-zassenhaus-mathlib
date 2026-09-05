import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus-mathlib» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekampZassenhaus from git
  "https://github.com/leanprover/hex-berlekamp-zassenhaus.git" @ "5b59d167f5bac139c2bf6f7a654476881314ff23"

require HexBerlekampMathlib from git
  "https://github.com/leanprover/hex-berlekamp-mathlib.git" @ "cdc574ac2c4d07c520d8d930e69d2c7778e8bd87"

require HexHenselMathlib from git
  "https://github.com/leanprover/hex-hensel-mathlib.git" @ "109d08c1128941d4ef1bc99dd116dc95010e0ffa"

require HexPolyZMathlib from git
  "https://github.com/leanprover/hex-poly-z-mathlib.git" @ "db6441e818dd3a21e99bd7bf7a1b53291a140207"

require HexMatrixMathlib from git
  "https://github.com/leanprover/hex-matrix-mathlib.git" @ "7e610d89729859968ae51cbbecb8aaef537d7225"

require HexLLLMathlib from git
  "https://github.com/leanprover/hex-lll-mathlib.git" @ "8f9c2d98fd4cce338196d7febf23fc288e2134b9"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.34.0-rc2"

require HexBasic from git
  "https://github.com/leanprover/hex-basic.git" @ "a47240943e925951a676d1a1c2f2a615ae68fdef"

require HexArith from git
  "https://github.com/leanprover/hex-arith.git" @ "ea246536c442464a68210ecce973eb7708968f59"

require HexPoly from git
  "https://github.com/leanprover/hex-poly.git" @ "1f7f31c7733ee5f0fa30d4a376adfa5125895c29"

require HexMatrix from git
  "https://github.com/leanprover/hex-matrix.git" @ "a99dc4690f411538088463b6db94e38958e65a81"

require HexRowReduce from git
  "https://github.com/leanprover/hex-row-reduce.git" @ "7550b5334bea67cba65c9a96a87d24557090784f"

require HexModArith from git
  "https://github.com/leanprover/hex-mod-arith.git" @ "67c1559800bc1f62622165d3fe5d6d346661539d"

require HexPolyZ from git
  "https://github.com/leanprover/hex-poly-z.git" @ "385df1df6b2667aeb001b6b781f7109943de243b"

require HexPolyFp from git
  "https://github.com/leanprover/hex-poly-fp.git" @ "ab1e4419cc16a219d0432bc1c535a8430385d329"

require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "1abc06a7bf0a0fb570116f88df049a412df7187a"

require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "67e940994ef10106a47b03a9d63ff8cd4a7a7daf"

require HexPolyMathlib from git
  "https://github.com/leanprover/hex-poly-mathlib.git" @ "a9eb9de8c92b96f57660d02c468f9f8622066641"

require HexRowReduceMathlib from git
  "https://github.com/leanprover/hex-row-reduce-mathlib.git" @ "5ad579c7fdea10924bae382aa76322be8fabeff7"

require HexModArithMathlib from git
  "https://github.com/leanprover/hex-mod-arith-mathlib.git" @ "5aa0aa69b47c153189d708c3047aa294a594113f"

require HexGramSchmidtMathlib from git
  "https://github.com/leanprover/hex-gram-schmidt-mathlib.git" @ "1fe2b7d38268092996b29a15b0b60ca3c4669586"

@[default_target]
lean_lib HexBerlekampZassenhausMathlib

@[default_target]
lean_lib HexBerlekampZassenhausMathlibModules where
  globs := #[`HexBerlekampZassenhausMathlib.All]

lean_lib HexBerlekampZassenhausMathlibTests where
  globs := #[`HexBerlekampZassenhausMathlib.FactorPolyTests, `HexBerlekampZassenhausMathlib.IrreducibilityTests]
