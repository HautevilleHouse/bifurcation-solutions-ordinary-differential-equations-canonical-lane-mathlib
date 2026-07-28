import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.BifurcationParameterSpace

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure EquilibriumBranchPackage {P : BifurcationParameterPackage} where
  equilibriumMap : P.baseSpace → (Type v)  -- parameter-dependent equilibrium manifold
  branchSmoothness : Prop
  nondegeneracyCondition : Prop

default EquilibriumBranchPackage

structure EquilibriumBranchEvidence {P : BifurcationParameterPackage}
    (E : EquilibriumBranchPackage P) where
  branchSmoothnessClosed : E.branchSmoothness
  nondegeneracyConditionClosed : E.nondegeneracyCondition

def EquilibriumBranchClosed {P : BifurcationParameterPackage}
    (E : EquilibriumBranchPackage P) : Prop :=
  E.branchSmoothness ∧ E.nondegeneracyCondition

theorem equilibrium_branch_closed_from_evidence {P : BifurcationParameterPackage}
    (E : EquilibriumBranchPackage P) (Ev : EquilibriumBranchEvidence E) :
    EquilibriumBranchClosed E :=
  And.intro Ev.branchSmoothnessClosed Ev.nondegeneracyConditionClosed

structure BifurcationPointPackage {P : BifurcationParameterPackage}
    {E : EquilibriumBranchPackage P} where
  candidatePoint : P.baseSpace × (Type v)  -- parameter and equilibrium
  linearizationHasZeroEigenvalue : Prop
  eigenvalueCrossingCondition : Prop
  transversalityCondition : Prop

default BifurcationPointPackage

structure BifurcationPointEvidence {P : BifurcationParameterPackage}
    {E : EquilibriumBranchPackage P} (B : BifurcationPointPackage P E) where
  linearizationHasZeroEigenvalueClosed : B.linearizationHasZeroEigenvalue
  eigenvalueCrossingConditionClosed : B.eigenvalueCrossingCondition
  transversalityConditionClosed : B.transversalityCondition

def BifurcationPointClosed {P : BifurcationParameterPackage}
    {E : EquilibriumBranchPackage P} (B : BifurcationPointPackage P E) : Prop :=
  B.linearizationHasZeroEigenvalue ∧ B.eigenvalueCrossingCondition ∧ B.transversalityCondition

theorem bifurcation_point_closed_from_evidence {P : BifurcationParameterPackage}
    {E : EquilibriumBranchPackage P} (B : BifurcationPointPackage P E)
    (Ev : BifurcationPointEvidence B) : BifurcationPointClosed B :=
  And.intro Ev.linearizationHasZeroEigenvalueClosed
    (And.intro Ev.eigenvalueCrossingConditionClosed Ev.transversalityConditionClosed)

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
