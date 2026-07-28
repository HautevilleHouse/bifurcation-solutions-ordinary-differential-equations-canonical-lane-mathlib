import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BifurcationWitnessClosed (A.object : BifurcationAdmittedObject)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse