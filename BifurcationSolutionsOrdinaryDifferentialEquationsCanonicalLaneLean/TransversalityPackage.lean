import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure TransversalityPackage where
  genericCondition : Prop
  nondegeneracy : Prop
  versalDeformation : Prop

default

structure TransversalityEvidence (P : TransversalityPackage) where
  genericConditionClosed : P.genericCondition
  nondegeneracyClosed : P.nondegeneracy
  versalDeformationClosed : P.versalDeformation

default

def TransversalityClosed (P : TransversalityPackage) : Prop :=
  P.genericCondition ∧ P.nondegeneracy ∧ P.versalDeformation

theorem transversality_closed_from_evidence (P : TransversalityPackage) (E : TransversalityEvidence P) :
    TransversalityClosed P := by
  exact And.intro E.genericConditionClosed (And.intro E.nondegeneracyClosed E.versalDeformationClosed)

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse