import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure EquilibriumPackage where
  equilibriumSet : Type
  linearization : equilibriumSet → Matrix
  eigenvaluesContinuous : Prop
  nondegeneracyCondition : Prop

structure EquilibriumEvidence (E : EquilibriumPackage) where
  eigenvaluesContinuousClosed : E.eigenvaluesContinuous
  nondegeneracyConditionClosed : E.nondegeneracyCondition

def EquilibriumClosed (E : EquilibriumPackage) : Prop :=
  E.eigenvaluesContinuous ∧ E.nondegeneracyCondition

theorem equilibrium_closed_from_evidence (E : EquilibriumPackage) (ev : EquilibriumEvidence E) :
    EquilibriumClosed E := by
  exact And.intro ev.eigenvaluesContinuousClosed ev.nondegeneracyConditionClosed

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse