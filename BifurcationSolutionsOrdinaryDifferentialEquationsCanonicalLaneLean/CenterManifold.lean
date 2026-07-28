import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure CenterManifoldPackage where
  linearPart : Type u → Type v
  centerEigenvalues : Prop
  spectralSplittingExists : Prop
  localInvariantManifold : Prop

structure CenterManifoldEvidence (C : CenterManifoldPackage) where
  centerEigenvaluesClosed : C.centerEigenvalues
  spectralSplittingExistsClosed : C.spectralSplittingExists
  localInvariantManifoldClosed : C.localInvariantManifold

def CenterManifoldClosed (C : CenterManifoldPackage) : Prop :=
  C.centerEigenvalues ∧ C.spectralSplittingExists ∧ C.localInvariantManifold

theorem center_manifold_closed_from_evidence (C : CenterManifoldPackage) (E : CenterManifoldEvidence C) :
    CenterManifoldClosed C := by
  exact And.intro E.centerEigenvaluesClosed (And.intro E.spectralSplittingExistsClosed E.localInvariantManifoldClosed)

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse