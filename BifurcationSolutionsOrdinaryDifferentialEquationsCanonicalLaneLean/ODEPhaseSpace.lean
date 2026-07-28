import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure ODEPhaseSpacePackage where
  stateSpace : Type u
  timeDomain : Type v
  vectorField : Type w
  flow : Type x
  smoothStructure : Prop
  wellPosedness : Prop
  globalExistence : Prop

structure ODEPhaseSpaceEvidence (P : ODEPhaseSpacePackage) where
  smoothStructureClosed : P.smoothStructure
  wellPosednessClosed : P.wellPosedness
  globalExistenceClosed : P.globalExistence

def ODEPhaseSpaceClosed (P : ODEPhaseSpacePackage) : Prop :=
  P.smoothStructure ∧ P.wellPosedness ∧ P.globalExistence

theorem ode_phase_space_closed_from_evidence
    (P : ODEPhaseSpacePackage) (E : ODEPhaseSpaceEvidence P) :
    ODEPhaseSpaceClosed P := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.wellPosednessClosed E.globalExistenceClosed)

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse