import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure HopfBifurcationPackage where
  parameterValue : Type u
  eigenvalueCrossing : Prop
  periodicOrbitEmerges : Prop
  stabilityBifurcation : Prop

structure HopfBifurcationEvidence (H : HopfBifurcationPackage) where
  eigenvalueCrossingClosed : H.eigenvalueCrossing
  periodicOrbitEmergesClosed : H.periodicOrbitEmerges
  stabilityBifurcationClosed : H.stabilityBifurcation

def HopfBifurcationClosed (H : HopfBifurcationPackage) : Prop :=
  H.eigenvalueCrossing ∧ H.periodicOrbitEmerges ∧ H.stabilityBifurcation

theorem hopf_bifurcation_closed_from_evidence (H : HopfBifurcationPackage) (E : HopfBifurcationEvidence H) :
    HopfBifurcationClosed H := by
  exact And.intro E.eigenvalueCrossingClosed (And.intro E.periodicOrbitEmergesClosed E.stabilityBifurcationClosed)

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse