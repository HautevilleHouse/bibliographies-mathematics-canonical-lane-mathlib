import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure ReferenceLink where
  sourceIdentifier : String
  targetIdentifier : String
  linkType : String
  resolved : Prop
  persistent : Prop

def linkClosed (l : ReferenceLink) : Prop := l.resolved ∧ l.persistent

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse