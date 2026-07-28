import BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean

structure BifurcationTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  manifoldConstrainedStatement : String
  carriedRemainder : String

def sourceTheoremStatement : BifurcationTheoremStatement :=
  {
    sourceKey := "bifurcation-solutions-ode-canonical-lane"
    theoremName := "Bifurcation Solutions ODE"
    theoremObject := "BifurcationAdmittedObject"
    manifoldConstrainedStatement := "bifurcation analysis constrained by admissible class closure"
    carriedRemainder := "classical source boundary remains open"
  }

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "bifurcation-solutions-ode-canonical-lane" := by
  rfl

end BifurcationSolutionsOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse