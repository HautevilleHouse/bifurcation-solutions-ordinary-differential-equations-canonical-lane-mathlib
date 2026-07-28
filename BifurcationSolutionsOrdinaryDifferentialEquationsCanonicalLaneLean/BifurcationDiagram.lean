import BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.BifurcationAnalysis

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationDiagramPackage {P : ODEPhaseSpacePackage}
    {B : BifurcationAnalysisPackage P} where
  bifurcationSet : Type u
  codimensionOne : Prop
  crossingConditions : Prop
  genericUnfolding : Prop
  persistenceUnderPerturbation : Prop

structure BifurcationDiagramEvidence {P : ODEPhaseSpacePackage}
    {B : BifurcationAnalysisPackage P} (D : BifurcationDiagramPackage B) where
  bifurcationSetClosed : D.bifurcationSet
  codimensionOneClosed : D.codimensionOne
  crossingConditionsClosed : D.crossingConditions
  genericUnfoldingClosed : D.genericUnfolding
  persistenceUnderPerturbationClosed : D.persistenceUnderPerturbation

def BifurcationDiagramClosed {P : ODEPhaseSpacePackage}
    {B : BifurcationAnalysisPackage P} (D : BifurcationDiagramPackage B) : Prop :=
  D.bifurcationSet ∧ D.codimensionOne ∧ D.crossingConditions ∧
  D.genericUnfolding ∧ D.persistenceUnderPerturbation

theorem bifurcation_diagram_closed_from_evidence
    {P : ODEPhaseSpacePackage} {B : BifurcationAnalysisPackage P}
    (D : BifurcationDiagramPackage B) (E : BifurcationDiagramEvidence D) :
    BifurcationDiagramClosed D := by
  exact And.intro E.bifurcationSetClosed
    (And.intro E.codimensionOneClosed
      (And.intro E.crossingConditionsClosed
        (And.intro E.genericUnfoldingClosed E.persistenceUnderPerturbationClosed)))

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse