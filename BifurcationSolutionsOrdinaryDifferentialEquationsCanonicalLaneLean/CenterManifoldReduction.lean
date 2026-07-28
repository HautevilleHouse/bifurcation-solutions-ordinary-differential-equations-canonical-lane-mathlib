import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure CenterManifoldPackage where
  phaseSpace : Type
  equilibrium : phaseSpace
  linearizationMatrix : Matrix
  centerEigenvalues : List Complex
  centerManifoldExists : Prop
  reductionValid : Prop

structure CenterManifoldEvidence (C : CenterManifoldPackage) where
  centerManifoldExistsClosed : C.centerManifoldExists
  reductionValidClosed : C.reductionValid

def CenterManifoldClosed (C : CenterManifoldPackage) : Prop :=
  C.centerManifoldExists ∧ C.reductionValid

theorem center_manifold_closed_from_evidence (C : CenterManifoldPackage) (ev : CenterManifoldEvidence C) :
    CenterManifoldClosed C := by
  exact And.intro ev.centerManifoldExistsClosed ev.reductionValidClosed

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse