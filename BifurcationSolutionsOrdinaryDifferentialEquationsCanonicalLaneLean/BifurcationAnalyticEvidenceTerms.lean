import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure LyapunovSchmidtEvidenceTerms where
  reductionPerformed : Prop
  bifurcationEquationDerived : Prop
  symmetryExploited : Prop
  closed : LyapunovSchmidtEvidenceTerms.reductionPerformed ∧ LyapunovSchmidtEvidenceTerms.bifurcationEquationDerived ∧ LyapunovSchmidtEvidenceTerms.symmetryExploited

default

structure CenterManifoldEvidenceTerms where
  centerManifoldExists : Prop
  reducedSystemDerived : Prop
  stabilityAnalyzed : Prop
  closed : CenterManifoldEvidenceTerms.centerManifoldExists ∧ CenterManifoldEvidenceTerms.reducedSystemDerived ∧ CenterManifoldEvidenceTerms.stabilityAnalyzed

default

structure SingularityTheoryEvidenceTerms where
  singularityClassified : Prop
  normalFormDerived : Prop
  unfoldingConstructed : Prop
  closed : SingularityTheoryEvidenceTerms.singularityClassified ∧ SingularityTheoryEvidenceTerms.normalFormDerived ∧ SingularityTheoryEvidenceTerms.unfoldingConstructed

default

structure BifurcationAnalyticEvidenceTerms where
  lyapunovSchmidt : LyapunovSchmidtEvidenceTerms
  centerManifold : CenterManifoldEvidenceTerms
  singularityTheory : SingularityTheoryEvidenceTerms

default

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse