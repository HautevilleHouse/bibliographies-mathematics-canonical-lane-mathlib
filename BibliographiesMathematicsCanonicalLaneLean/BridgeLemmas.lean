import BibliographiesMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.validReference

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse