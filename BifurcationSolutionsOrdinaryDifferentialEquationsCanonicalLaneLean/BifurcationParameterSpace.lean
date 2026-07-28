import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationParameterPackage where
  baseSpace : Type u
  parameterDimension : Nat
  smoothStructure : Prop

default BifurcationParameterPackage

structure BifurcationParameterEvidence (P : BifurcationParameterPackage) where
  baseSpaceDefined : P.baseSpace = P.baseSpace
  parameterDimensionPositive : P.parameterDimension > 0
  smoothStructureClosed : P.smoothStructure

def BifurcationParameterClosed (P : BifurcationParameterPackage) : Prop :=
  P.smoothStructure ∧ P.parameterDimension > 0

theorem bifurcation_parameter_closed_from_evidence (P : BifurcationParameterPackage)
    (E : BifurcationParameterEvidence P) : BifurcationParameterClosed P :=
  And.intro E.smoothStructureClosed E.parameterDimensionPositive

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
