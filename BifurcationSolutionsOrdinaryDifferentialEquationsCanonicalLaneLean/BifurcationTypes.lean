import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

inductive BifurcationType
| saddleNode
| transcritical
| pitchfork
| hopf

def BifurcationType.toString : BifurcationType → String
| .saddleNode => "saddle-node"
| .transcritical => "transcritical"
| .pitchfork => "pitchfork"
| .hopf => "Hopf"

structure BifurcationClassificationPackage where
  bifurcationType : BifurcationType
  normalFormDegree : Nat
  transversalityCondition : Prop
  unfoldingParameters : List Real

structure BifurcationClassificationEvidence (B : BifurcationClassificationPackage) where
  transversalityConditionClosed : B.transversalityCondition
  unfoldingParametersClosed : B.unfoldingParameters.length ≥ 1

def BifurcationClassificationClosed (B : BifurcationClassificationPackage) : Prop :=
  B.transversalityCondition ∧ B.unfoldingParameters.length ≥ 1

theorem bifurcation_classification_closed_from_evidence
    (B : BifurcationClassificationPackage) (ev : BifurcationClassificationEvidence B) :
    BifurcationClassificationClosed B := by
  exact And.intro ev.transversalityConditionClosed ev.unfoldingParametersClosed

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse