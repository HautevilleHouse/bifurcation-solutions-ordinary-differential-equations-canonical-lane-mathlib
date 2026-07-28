import BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BifurcationAdmittedObject where
  space : BifurcationSpace
  parameterSpace : Type
  familyOfODEs : Prop
  bifurcationDetected : Prop
  conclusion : bifurcationDetected

def BifurcationWitnessClosed (O : BifurcationAdmittedObject) : Prop :=
  O.bifurcationDetected

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse