import BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.ODEPhaseSpace

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationAnalysisPackage {P : ODEPhaseSpacePackage} where
  parameterFamily : Type u
  equilibriumManifold : Type v
  bifurcationPoints : Type w
  centerManifoldReduction : Prop
  normalFormComputed : Prop
  stabilityAnalysis : Prop

structure BifurcationAnalysisEvidence {P : ODEPhaseSpacePackage}
    (B : BifurcationAnalysisPackage P) where
  centerManifoldReductionClosed : B.centerManifoldReduction
  normalFormComputedClosed : B.normalFormComputed
  stabilityAnalysisClosed : B.stabilityAnalysis

def BifurcationAnalysisClosed {P : ODEPhaseSpacePackage}
    (B : BifurcationAnalysisPackage P) : Prop :=
  B.centerManifoldReduction ∧ B.normalFormComputed ∧ B.stabilityAnalysis

theorem bifurcation_analysis_closed_from_evidence
    {P : ODEPhaseSpacePackage} (B : BifurcationAnalysisPackage P)
    (E : BifurcationAnalysisEvidence B) : BifurcationAnalysisClosed B := by
  exact And.intro E.centerManifoldReductionClosed
    (And.intro E.normalFormComputedClosed E.stabilityAnalysisClosed)

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse