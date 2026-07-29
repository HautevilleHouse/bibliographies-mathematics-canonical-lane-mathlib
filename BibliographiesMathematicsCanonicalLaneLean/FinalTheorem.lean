import BibliographiesMathematicsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

def ConstrainedBibliographyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bibliography_endgame (A : AdmissibleClass) :
    ConstrainedBibliographyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse