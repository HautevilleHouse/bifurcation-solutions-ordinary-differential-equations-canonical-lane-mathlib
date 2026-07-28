import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.EquilibriumStructure

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure CenterManifoldPackage {P : BifurcationParameterPackage}
    {E : EquilibriumBranchPackage P} {B : BifurcationPointPackage P E} where
  centerManifoldDimension : Nat
  reductionSmoothness : Prop
  dynamicsOnCenterManifold : Prop

default CenterManifoldPackage

structure CenterManifoldEvidence {P : BifurcationParameterPackage}
    {E : EquilibriumBranchPackage P} {B : BifurcationPointPackage P E}
    (C : CenterManifoldPackage P E B) where
  reductionSmoothnessClosed : C.reductionSmoothness
  dynamicsOnCenterManifoldClosed : C.dynamicsOnCenterManifold

def CenterManifoldClosed {P : BifurcationParameterPackage}
    {E : EquilibriumBranchPackage P} {B : BifurcationPointPackage P E}
    (C : CenterManifoldPackage P E B) : Prop :=
  C.reductionSmoothness ∧ C.dynamicsOnCenterManifold

theorem center_manifold_closed_from_evidence {P : BifurcationParameterPackage}
    {E : EquilibriumBranchPackage P} {B : BifurcationPointPackage P E}
    (C : CenterManifoldPackage P E B) (Ev : CenterManifoldEvidence C) :
    CenterManifoldClosed C :=
  And.intro Ev.reductionSmoothnessClosed Ev.dynamicsOnCenterManifoldClosed

structure NormalFormPackage {P : BifurcationParameterPackage}
    {E : EquilibriumBranchPackage P} {B : BifurcationPointPackage P E}
    {C : CenterManifoldPackage P E B} where
  normalFormPolynomial : Type u
  normalFormTruncation : Prop
  equivalenceTransformation : Prop

default NormalFormPackage

structure NormalFormEvidence {P : BifurcationParameterPackage}
    {E : EquilibriumBranchPackage P} {B : BifurcationPointPackage P E}
    {C : CenterManifoldPackage P E B} (N : NormalFormPackage P E B C) where
  normalFormTruncationClosed : N.normalFormTruncation
  equivalenceTransformationClosed : N.equivalenceTransformation

def NormalFormClosed {P : BifurcationParameterPackage}
    {E : EquilibriumBranchPackage P} {B : BifurcationPointPackage P E}
    {C : CenterManifoldPackage P E B} (N : NormalFormPackage P E B C) : Prop :=
  N.normalFormTruncation ∧ N.equivalenceTransformation

theorem normal_form_closed_from_evidence {P : BifurcationParameterPackage}
    {E : EquilibriumBranchPackage P} {B : BifurcationPointPackage P E}
    {C : CenterManifoldPackage P E B} (N : NormalFormPackage P E B C)
    (Ev : NormalFormEvidence N) : NormalFormClosed N :=
  And.intro Ev.normalFormTruncationClosed Ev.equivalenceTransformationClosed

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
