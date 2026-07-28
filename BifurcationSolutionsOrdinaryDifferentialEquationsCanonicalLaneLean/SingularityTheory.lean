import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure SingularityTheoryPackage where
  catastropheSet : Prop
  normalFormsClassified : Prop
  universalUnfolding : Prop
  codimensionComputed : Prop

structure SingularityTheoryEvidence (S : SingularityTheoryPackage) where
  catastropheSetClosed : S.catastropheSet
  normalFormsClassifiedClosed : S.normalFormsClassified
  universalUnfoldingClosed : S.universalUnfolding
  codimensionComputedClosed : S.codimensionComputed

def SingularityTheoryClosed (S : SingularityTheoryPackage) : Prop :=
  S.catastropheSet ∧ S.normalFormsClassified ∧
  S.universalUnfolding ∧ S.codimensionComputed

theorem singularity_theory_closed_from_evidence (S : SingularityTheoryPackage) (E : SingularityTheoryEvidence S) :
    SingularityTheoryClosed S := by
  exact And.intro E.catastropheSetClosed (And.intro E.normalFormsClassifiedClosed
    (And.intro E.universalUnfoldingClosed E.codimensionComputedClosed))

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse