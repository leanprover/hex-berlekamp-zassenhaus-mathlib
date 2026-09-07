import Lake

open System Lake DSL

package «hex-berlekamp-zassenhaus-mathlib» where
  leanOptions := #[⟨`doc.verso, true⟩, ⟨`doc.verso.suggestions, false⟩]

require HexBerlekampZassenhaus from git
  "https://github.com/leanprover/hex-berlekamp-zassenhaus.git" @ "72a2a4ad9616f34975cbb401d1d6937093f3756e"

require HexBerlekampMathlib from git
  "https://github.com/leanprover/hex-berlekamp-mathlib.git" @ "e8003cb04e22644ee034264d312983ef18cca865"

require HexHenselMathlib from git
  "https://github.com/leanprover/hex-hensel-mathlib.git" @ "f9df55da0d83fb4e93847bd02acc0f95eb90a607"

require HexPolyZMathlib from git
  "https://github.com/leanprover/hex-poly-z-mathlib.git" @ "688a3dfb76e2fd18a63236b9c55df4f8f1956ea3"

require HexMatrixMathlib from git
  "https://github.com/leanprover/hex-matrix-mathlib.git" @ "ee61da70b963a82eb056a5304aa5a65e1af21bf8"

require HexLLLMathlib from git
  "https://github.com/leanprover/hex-lll-mathlib.git" @ "2518fcccdaa32e74e11bc315ee1905ee2475721c"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.34.0-rc2"

require HexBasic from git
  "https://github.com/leanprover/hex-basic.git" @ "1a0fff2c8f545753b01cff0d941bf48f945cd299"

require HexArith from git
  "https://github.com/leanprover/hex-arith.git" @ "cffb477db5d3ec87a4ef5c9466065e2e7ae03633"

require HexPoly from git
  "https://github.com/leanprover/hex-poly.git" @ "fd37a81f38b4286e3d4f6b5cf896ed3da0ca3b79"

require HexMatrix from git
  "https://github.com/leanprover/hex-matrix.git" @ "f857b2b4495dc8d9ba6583d559d2b885ccbf40fc"

require HexRowReduce from git
  "https://github.com/leanprover/hex-row-reduce.git" @ "35b27c54b2211b0a2b4e74f74d0041242edcd524"

require HexModArith from git
  "https://github.com/leanprover/hex-mod-arith.git" @ "b4d0be9f888af0ff79169423144599d649cd969a"

require HexPolyZ from git
  "https://github.com/leanprover/hex-poly-z.git" @ "1f22e9a8ae948501ab56e37a4cdb8153e60be9c9"

require HexPolyFp from git
  "https://github.com/leanprover/hex-poly-fp.git" @ "6bb30a50196b830b5faeead8580b1bd889069717"

require HexBerlekamp from git
  "https://github.com/leanprover/hex-berlekamp.git" @ "209314f5bbaf5d341c9240451e6bb144ffceaa00"

require HexHensel from git
  "https://github.com/leanprover/hex-hensel.git" @ "82dbdda3eb079611c0e2ea60022132c2b4fdf049"

require HexPolyMathlib from git
  "https://github.com/leanprover/hex-poly-mathlib.git" @ "1b044cdd65e62c4538e710aaf2989ebf6065c536"

require HexRowReduceMathlib from git
  "https://github.com/leanprover/hex-row-reduce-mathlib.git" @ "4b409d713cc3737391fee28c4b6335426bad6ffe"

require HexModArithMathlib from git
  "https://github.com/leanprover/hex-mod-arith-mathlib.git" @ "7a6dee3107b13b1f0cabfbdec99b0c3329881245"

require HexGramSchmidtMathlib from git
  "https://github.com/leanprover/hex-gram-schmidt-mathlib.git" @ "e585b5ec0ae93cac938b7ad3ca5a726822a867b1"

@[default_target]
lean_lib HexBerlekampZassenhausMathlib

@[default_target]
lean_lib HexBerlekampZassenhausMathlibModules where
  globs := #[`HexBerlekampZassenhausMathlib.All]

lean_lib HexBerlekampZassenhausMathlibTests where
  globs := #[`HexBerlekampZassenhausMathlib.FactorPolyTests, `HexBerlekampZassenhausMathlib.IrreducibilityTests]
