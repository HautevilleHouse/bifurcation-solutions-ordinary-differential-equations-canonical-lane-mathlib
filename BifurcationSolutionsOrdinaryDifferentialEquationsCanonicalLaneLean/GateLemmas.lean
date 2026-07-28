import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
