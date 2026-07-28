import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure NormalFormPackage where
  dimension : Nat
  niłpotentPart : Matrix
  semisimplePart : Matrix
  normalFormComputed : Prop
  coefficients : List Real

structure NormalFormEvidence (N : NormalFormPackage) where
  normalFormComputedClosed : N.normalFormComputed
  coefficientsNonzero : N.coefficients.any (λ x => x ≠ 0)

def NormalFormClosed (N : NormalFormPackage) : Prop :=
  N.normalFormComputed ∧ N.coefficients.any (λ x => x ≠ 0)

theorem normal_form_closed_from_evidence (N : NormalFormPackage) (ev : NormalFormEvidence N) :
    NormalFormClosed N := by
  exact And.intro ev.normalFormComputedClosed ev.coefficientsNonzero

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse