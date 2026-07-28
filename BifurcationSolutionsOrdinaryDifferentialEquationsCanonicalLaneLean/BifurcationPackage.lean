import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationProblem where
  parameterSpace : Type u
  stateSpace : Type v
  family : parameterSpace → stateSpace → stateSpace
  equilibrium : parameterSpace → stateSpace → Prop
  bifurcationPoint : parameterSpace → Prop

structure BifurcationProblemEvidence (B : BifurcationProblem) where
  familySmooth : Prop
  equilibriumDefined : ∀ (p : B.parameterSpace), ∃ (x : B.stateSpace), B.equilibrium p x
  bifurcationPointDetected : B.bifurcationPoint

def BifurcationProblemClosed (B : BifurcationProblem) : Prop :=
  B.bifurcationPoint

theorem bifurcation_problem_closed_from_evidence (B : BifurcationProblem) (E : BifurcationProblemEvidence B) :
    BifurcationProblemClosed B := by
  exact E.bifurcationPointDetected

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse