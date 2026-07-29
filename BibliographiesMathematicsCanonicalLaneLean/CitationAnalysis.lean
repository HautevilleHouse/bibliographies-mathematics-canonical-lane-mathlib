import HautevilleHouse.BibliographiesMathematicsCanonicalLaneLean.BibliographyMetadata

namespace HautevilleHouse
namespace BibliographiesMathematicsCanonicalLaneLean

structure CitationNetworkPackage (BM : BibliographyMetadataPackage) where
  adjacencyMatrix : Type
  impactFactors : List Float
  hIndex : Float
  networkConnected : Prop
  citationDistributions : Prop

structure CitationNetworkEvidence {BM : BibliographyMetadataPackage}
    (CN : CitationNetworkPackage BM) where
  networkConnectedClosed : CN.networkConnected
  citationDistributionsClosed : CN.citationDistributions

def CitationNetworkClosed {BM : BibliographyMetadataPackage}
    (CN : CitationNetworkPackage BM) : Prop :=
  CN.networkConnected ∧ CN.citationDistributions

theorem citation_network_closed_from_evidence {BM : BibliographyMetadataPackage}
    (CN : CitationNetworkPackage BM) (E : CitationNetworkEvidence CN) :
    CitationNetworkClosed CN := by
  exact And.intro E.networkConnectedClosed E.citationDistributionsClosed

end BibliographiesMathematicsCanonicalLaneLean
end HautevilleHouse
