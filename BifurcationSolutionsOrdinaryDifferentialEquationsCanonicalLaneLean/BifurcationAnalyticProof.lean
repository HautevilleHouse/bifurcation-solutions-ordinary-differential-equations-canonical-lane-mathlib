import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure HopfBifurcationCertificate where
  equilibrium : EquilibriumPoint
  eigenvalueCrossing : Prop
  nondegeneracy : Prop
  closed : HopfBifurcationCertificate.eigenvalueCrossing ∧ HopfBifurcationCertificate.nondegeneracy

default

structure SaddleNodeCertificate where
  equilibrium : EquilibriumPoint
  foldCondition : Prop
  nondegeneracy : Prop
  closed : SaddleNodeCertificate.foldCondition ∧ SaddleNodeCertificate.nondegeneracy

default

structure PitchforkCertificate where
  equilibrium : EquilibriumPoint
  symmetry : Prop
  nondegeneracy : Prop
  closed : PitchforkCertificate.symmetry ∧ PitchforkCertificate.nondegeneracy

default

structure BifurcationAnalyticProof where
  hopf : HopfBifurcationCertificate
  saddleNode : SaddleNodeCertificate
  pitchfork : PitchforkCertificate

default

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse