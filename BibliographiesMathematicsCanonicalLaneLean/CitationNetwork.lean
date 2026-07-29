import HautevilleHouse.BibliographiesMathematicsCanonicalLaneLean.ReferencePackage

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure CitationLink where
  source : BibliographicReference
  target : BibliographicReference
  citationContext : String
  verified : Prop
  verifiedTerm : verified

structure CitationNetwork where
  links : List CitationLink
  allLinksVerified : Prop
  networkConnected : Prop
  allLinksVerifiedTerm : allLinksVerified
  networkConnectedTerm : networkConnected

structure CitationNetworkEvidence (N : CitationNetwork) where
  allLinksVerifiedClosed : N.allLinksVerified
  networkConnectedClosed : N.networkConnected

def CitationNetworkClosed (N : CitationNetwork) : Prop :=
  N.allLinksVerified ∧ N.networkConnected

theorem citation_network_closed_from_evidence (N : CitationNetwork) (E : CitationNetworkEvidence N) :
    CitationNetworkClosed N := by
  exact And.intro E.allLinksVerifiedClosed E.networkConnectedClosed

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse