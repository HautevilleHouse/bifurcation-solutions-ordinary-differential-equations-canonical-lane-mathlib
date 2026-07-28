import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure NormalFormPackage where
  powerSeriesExpansion : Prop
  resonantTermsIdentified : Prop
  coordinateTransformation : Prop
  normalFormComputed : Prop

structure NormalFormEvidence (N : NormalFormPackage) where
  powerSeriesExpansionClosed : N.powerSeriesExpansion
  resonantTermsIdentifiedClosed : N.resonantTermsIdentified
  coordinateTransformationClosed : N.coordinateTransformation
  normalFormComputedClosed : N.normalFormComputed

def NormalFormClosed (N : NormalFormPackage) : Prop :=
  N.powerSeriesExpansion ∧ N.resonantTermsIdentified ∧
  N.coordinateTransformation ∧ N.normalFormComputed

theorem normal_form_closed_from_evidence (N : NormalFormPackage) (E : NormalFormEvidence N) :
    NormalFormClosed N := by
  exact And.intro E.powerSeriesExpansionClosed (And.intro E.resonantTermsIdentifiedClosed
    (And.intro E.coordinateTransformationClosed E.normalFormComputedClosed))

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse