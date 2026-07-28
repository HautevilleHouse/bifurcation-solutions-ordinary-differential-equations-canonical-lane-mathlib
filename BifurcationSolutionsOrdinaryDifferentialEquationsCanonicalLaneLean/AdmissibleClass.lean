import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationObject where
  parameterSpace : Type u
  stateSpace : Type v
  family : parameterSpace → (stateSpace → stateSpace)  -- ODE vector field
  bifurcationPoint : parameterSpace × stateSpace
  nonhyperbolic : Prop
  eigenvalueCrossing : Prop
  conclusion : nonhyperbolic ∧ eigenvalueCrossing

structure AdmissibleClass where
  object : BifurcationObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.nonhyperbolic ∧ A.object.eigenvalueCrossing) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
