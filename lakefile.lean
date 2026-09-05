import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus-mathlib» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekampZassenhaus from git
  "https://github.com/leanprover/hex-berlekamp-zassenhaus.git" @ "a75e874fc96b8e87916c6026a8e7cabcf7a99447"

require HexBerlekampMathlib from git
  "https://github.com/leanprover/hex-berlekamp-mathlib.git" @ "0cbca7c7455434693fe270088fb3cff1e5bcedcc"

require HexHenselMathlib from git
  "https://github.com/leanprover/hex-hensel-mathlib.git" @ "e85d72ef90da456027bcc59a3f2ca04fa326fc24"

require HexPolyZMathlib from git
  "https://github.com/leanprover/hex-poly-z-mathlib.git" @ "d9b7ba1f1ef5bc456f9b7467f694b940d5e5200a"

require HexMatrixMathlib from git
  "https://github.com/leanprover/hex-matrix-mathlib.git" @ "7c5744ca46a91252712f1c421911e9a2463d5fd6"

require HexLLLMathlib from git
  "https://github.com/leanprover/hex-lll-mathlib.git" @ "52dc3389fd80ee32372eb5f2e1d1c237715d8f65"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.34.0-rc2"

require HexBasic from git
  "https://github.com/leanprover/hex-basic.git" @ "da8a864cd17ccca780d8c76af403e88585bc4734"

require HexArith from git
  "https://github.com/leanprover/hex-arith.git" @ "ea246536c442464a68210ecce973eb7708968f59"

require HexPoly from git
  "https://github.com/leanprover/hex-poly.git" @ "bf67a5243d68c909bcd059a89fd9d3f1c54ba7d8"

require HexMatrix from git
  "https://github.com/leanprover/hex-matrix.git" @ "25cfbbd8a689eb782fad408c46a9c1796dd943b2"

require HexRowReduce from git
  "https://github.com/leanprover/hex-row-reduce.git" @ "967216591082d290bc3f9e1b7405effd910bdef9"

require HexModArith from git
  "https://github.com/leanprover/hex-mod-arith.git" @ "67c1559800bc1f62622165d3fe5d6d346661539d"

require HexPolyZ from git
  "https://github.com/leanprover/hex-poly-z.git" @ "037df2d4b50602d07892e7591547c4b641b03c63"

require HexPolyFp from git
  "https://github.com/leanprover/hex-poly-fp.git" @ "da25459d8ebb26693edfcc70a9217fa6a5c1a1eb"

require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "038357670f6b370babd6d46254f994c4e5493ad8"

require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "e9cdca38baa5b0c9e6449300715cb4defc342f9c"

require HexPolyMathlib from git
  "https://github.com/leanprover/hex-poly-mathlib.git" @ "d4bbb82b87704d3016c6c1d822ae1f77c793958a"

require HexRowReduceMathlib from git
  "https://github.com/leanprover/hex-row-reduce-mathlib.git" @ "5b0b760e455c2a5e0bd1811803598075c2e81a0b"

require HexModArithMathlib from git
  "https://github.com/leanprover/hex-mod-arith-mathlib.git" @ "5aa0aa69b47c153189d708c3047aa294a594113f"

require HexGramSchmidtMathlib from git
  "https://github.com/leanprover/hex-gram-schmidt-mathlib.git" @ "2079039e908154577aee65abe678ab42e49803d5"

@[default_target]
lean_lib HexBerlekampZassenhausMathlib

@[default_target]
lean_lib HexBerlekampZassenhausMathlibModules where
  globs := #[`HexBerlekampZassenhausMathlib.All]

lean_lib HexBerlekampZassenhausMathlibTests where
  globs := #[`HexBerlekampZassenhausMathlib.FactorPolyTests, `HexBerlekampZassenhausMathlib.IrreducibilityTests]
