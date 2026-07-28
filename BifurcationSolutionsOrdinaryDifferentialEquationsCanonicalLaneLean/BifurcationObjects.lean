import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationParameter where
  carrier : Type
  order : carrier → carrier → Prop

default

structure BifurcationSystem where
  stateSpace : Type
  parameterSpace : BifurcationParameter
  vectorField : stateSpace × parameterSpace.carrier → stateSpace
  smooth : Prop

default

structure EquilibriumPoint where
  system : BifurcationSystem
  state : system.stateSpace
  param : system.parameterSpace.carrier
  isEquilibrium : system.vectorField (state, param) = state

default

structure BifurcationPoint where
  system : BifurcationSystem
  equilibrium : EquilibriumPoint system
  isBifurcation : Prop

default

structure BifurcationAdmittedObject where
  object : BifurcationPoint
  conclusion : object.isBifurcation

default

def BifurcationWitnessClosed (O : BifurcationAdmittedObject) : Prop :=
  O.conclusion

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse